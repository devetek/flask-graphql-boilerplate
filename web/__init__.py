from flask import Flask
from models import db, migrate
# from flask_moment import Moment
from flask_login import LoginManager
# from flask_bootstrap import Bootstrap
# from flask_babel import Babel, lazy_gettext as _l


# ===== Modular Routes =====
from web.modules.member import bp as member_bp, routes
from web.modules.book import bp as book_bp, routes
from web.modules.errors import bp as errors_bp, handlers


# bootstrap = Bootstrap()
login = LoginManager()
# moment = Moment()
# babel = Babel()


def bootstrap_web(config_class):
    app = Flask(__name__)
    app.config.from_object(config_class)
    # bootstrap.init_app(app)
    db.init_app(app)
    migrate.init_app(app, db)
    # moment.init_app(app)
    # babel.init_app(app)
    login.init_app(app)

    """[routes handler for http, ws or polling]
    Descriptions: define your routes method, using Flask Blueprint or traditional routes
    Author: Prakasa <prakasa@devetek.com>
    """
    app.register_blueprint(member_bp, url_prefix='/member')
    app.register_blueprint(book_bp, url_prefix='/book')
    app.register_blueprint(errors_bp)
    app.run()

    return app
