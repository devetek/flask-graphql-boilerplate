from flask import Blueprint
from flask_restful import Api

bp = Blueprint('payment', __name__)
api = Api(bp)
