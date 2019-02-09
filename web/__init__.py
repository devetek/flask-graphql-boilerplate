from flask import Flask
from config import Config
from flask_bootstrap import Bootstrap
from flask_socketio import SocketIO
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

# ===== Modular Routes =====
from web.modules.members import bp as members_bp, routes
from web.modules.errors import bp as errors_bp, handlers
from web.route.socket.main import routes as socketIOroutes


bootstrap = Bootstrap()
db = SQLAlchemy()
migrate = Migrate()


def bootstrap_web(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)
    socketio = SocketIO(app)
    bootstrap.init_app(app)
    db.init_app(app)
    migrate.init_app(app, db)

    """[routes handler for http, sw or polling]
    Descriptions: define your routes method, using Flask Blueprint or traditional routes
    Author: Prakasa <prakasa@devetek.com>
    """
    app.register_blueprint(members_bp, url_prefix='/member')
    app.register_blueprint(errors_bp)
    socketIOroutes(socketio)

    socketio.run(app)
