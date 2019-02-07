from flask import Flask
from flask_socketio import SocketIO
from web.route.socket.main import routes as socketIOroutes

# ===== Modular Routes =====
from web.modules.members import members_bp
#from web.modules.package import package_bp
#from web.modules.book import book_bp
#from web.modules.purchase import purchase_bp
from web.modules.errors import errors_bp


def bootstrap_web():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'devetek-MK-micro-API'
    socketio = SocketIO(app)

    """[routes handler for http, sw or polling]
    Descriptions: define your routes method, using Flask Blueprint or traditional routes
    Author: Prakasa <prakasa@devetek.com>
    """
    #app.register_blueprint(members_bp, url_prefix='/member')
    #app.register_blueprint(members_bp, url_prefix='/package')
    #app.register_blueprint(members_bp, url_prefix='/book')
    #app.register_blueprint(members_bp, url_prefix='/payment')
    app.register_blueprint(errors_bp)
    socketIOroutes(socketio)

    socketio.run(app)
