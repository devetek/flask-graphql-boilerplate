from flask import Flask
from flask_socketio import SocketIO

from routes.http.main import routes as httpRoutes
from routes.socket.main import routes as socketIOroutes

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret!'
socketio = SocketIO(app)

"""[routes handler for http, sw, polling]
Descriptions: define your routes method, using Flask Blueprint or traditional routes
Author: Prakasa <prakasa@devetek.com>
"""
httpRoutes(app)
socketIOroutes(socketio)

if __name__ == '__main__':
    socketio.run(app)
