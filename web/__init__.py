import os

from flask import Flask

from models import db, migrate

from .helpers.config_handler import FlaskIni
from .helpers.jwt_handler import JwtHandler
# ===== Modular Routes =====
from .modules.account import bp as account_bp
from .modules.account import routes
from .modules.auth import bp as auth_bp
from .modules.auth import routes
from .modules.errors import bp as errors_bp
from .modules.errors import handlers
from .modules.payment import bp as payment_bp
from .modules.payment import routes


def bootstrap_http():
    app = Flask(__name__)
    app.iniconfig = FlaskIni()
    with app.app_context():
        app.iniconfig.read('./config/' + os.environ['FLASK_ENV'] + "-" + os.environ['DB'] + '.ini')

    # Plugin Initialization
    db.init_app(app)
    migrate.init_app(app, db)

    # JWT: Session Centralized
    jwt_middleware = JwtHandler(app)

    """[routes handler for http, ws or polling]
    Descriptions: define your routes method, using Flask Blueprint or traditional routes
    Author: Prakasa <prakasa@devetek.com>
    """
    app.register_blueprint(account_bp, url_prefix='/account')
    app.register_blueprint(auth_bp, url_prefix='/auth')
    app.register_blueprint(payment_bp, url_prefix='/payment')
    app.register_blueprint(errors_bp)

    return app
