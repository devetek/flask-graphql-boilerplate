from flask import Flask
from models import db, migrate
from flask_moment import Moment
from flask_login import LoginManager
from flask_bootstrap import Bootstrap
from flask_babel import Babel, lazy_gettext as _l


# ===== Modular Routes =====
from web.modules.members import bp as members_bp, routes
from web.modules.errors import bp as errors_bp, handlers


bootstrap = Bootstrap()
login = LoginManager()
moment = Moment()
babel = Babel()
login.login_view = 'auth.login'
login.login_message = _l('Please log in to access this page.')


def bootstrap_web(config_class):
    app = Flask(__name__)
    app.config.from_object(config_class)
    bootstrap.init_app(app)
    db.init_app(app)
    migrate.init_app(app, db)
    moment.init_app(app)
    babel.init_app(app)
    login.init_app(app)

    """[routes handler for http, sw or polling]
    Descriptions: define your routes method, using Flask Blueprint or traditional routes
    Author: Prakasa <prakasa@devetek.com>
    """
    app.register_blueprint(members_bp, url_prefix='/member')
    app.register_blueprint(errors_bp)
    app.run()

    return app
