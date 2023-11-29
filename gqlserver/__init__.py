import os

from flask import Flask
from shared.models import db, migrate

from gqlserver.helpers.config_handler import FlaskIni
from .core import bp as graphql_bp

# ===== Modular API Routes =====
# Disabled and move to another boilerplate "flask modular routing system"
from gqlserver.modules.errors import bp as errors_bp
# from .modules.errors import handlers


def bootstrap_http():
    app = Flask(__name__)
    app.iniconfig = FlaskIni()
    with app.app_context():
        app.iniconfig.read('./config/' + os.environ['FLASK_ENV'] + "-" +
                           os.environ['DB'] + '.ini')

    # Plugins Initialization
    db.init_app(app)
    migrate.init_app(app, db)


    """[routes handler]
    Define your routes method, using Flask Blueprint or traditional routes
    Ref: https://flask.palletsprojects.com/en/2.0.x/blueprints/
    """
    app.register_blueprint(graphql_bp, url_prefix='/graphql')
    app.register_blueprint(errors_bp)

    return app
