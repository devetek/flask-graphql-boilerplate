import os

from flask import Flask
from models import db, migrate

# ===== Common Routes [graphql, Error Handler] =====
from .graphql import bp as graphql_bp
from .helpers.config_handler import FlaskIni
from .helpers.jwt_handler import JwtHandler
# ===== Modular API Routes =====
from .modules.account import bp as account_bp
from .modules.auth import bp as auth_bp
from .modules.errors import bp as errors_bp
from .modules.errors import handlers


def bootstrap_http():
    app = Flask(__name__)
    app.iniconfig = FlaskIni()
    with app.app_context():
        app.iniconfig.read('./config/' + os.environ['FLASK_ENV'] + "-" +
                           os.environ['DB'] + '.ini')

    # Plugins Initialization
    db.init_app(app)
    migrate.init_app(app, db)

    # JWT: Session Centralized
    JwtHandler(app)


    """[routes handler]
    Define your routes method, using Flask Blueprint or traditional routes
    Ref: https://flask.palletsprojects.com/en/2.0.x/blueprints/
    """
    app.register_blueprint(account_bp, url_prefix='/account')
    app.register_blueprint(auth_bp, url_prefix='/auth')
    app.register_blueprint(graphql_bp, url_prefix='/graphql')
    app.register_blueprint(errors_bp)

    return app
