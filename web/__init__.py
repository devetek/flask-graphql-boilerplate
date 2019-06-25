from config import Config
from flask import Flask, session
from flask_session import Session
from models import db, migrate
from models.user import User
from flask_login import LoginManager
from flask_jwt_extended import JWTManager
from .helpers.session_handler import validate_session, validate_session_header, unauthorized_session
from flask_babel import Babel, lazy_gettext as _l


# ===== Modular Routes =====
from web.modules.account import bp as account_bp, routes
from web.modules.oauth import bp as oauth_bp, routes
from web.modules.content import bp as content_bp, routes
from web.modules.payment import bp as payment_bp, routes
from web.modules.errors import bp as errors_bp, handlers


sess = Session()
login = LoginManager()
babel = Babel()


def bootstrap_web(config_class):
    app = Flask(__name__)
    app.config.from_object(config_class)

    # Plugin Initialization
    sess.init_app(app)
    db.init_app(app)
    migrate.init_app(app, db)
    JWTManager(app)
    login.init_app(app)
    login.unauthorized_handler(unauthorized_session)
    login.user_loader(validate_session)
    login.request_loader(validate_session_header)
    babel.init_app(app)

    """[routes handler for http, ws or polling]
    Descriptions: define your routes method, using Flask Blueprint or traditional routes
    Author: Prakasa <prakasa@devetek.com>
    """
    app.register_blueprint(account_bp, url_prefix='/account')
    app.register_blueprint(oauth_bp, url_prefix='/oauth')
    app.register_blueprint(payment_bp, url_prefix='/payment')
    app.register_blueprint(errors_bp)

    return app
