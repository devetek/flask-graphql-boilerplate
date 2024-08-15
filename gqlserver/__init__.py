import os

from flask import Flask

# graphql core
from .core import bp as graphql_bp


def bootstrap_app():
    app = Flask(__name__)

    """[routes]
    Define your routes method, using Flask Blueprint or traditional routes
    Ref:
    - Blueprint: https://flask.palletsprojects.com/en/2.0.x/blueprints/
    """
    app.register_blueprint(graphql_bp, url_prefix='/graphql')
    
    # default error handler
    # app.register_blueprint(errors_bp)

    return app
