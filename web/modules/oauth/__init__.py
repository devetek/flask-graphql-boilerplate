from flask import Blueprint
from flask_restful import Api

bp = Blueprint('oauth', __name__)
api = Api(bp)
