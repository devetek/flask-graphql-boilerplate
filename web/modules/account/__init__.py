from flask import Blueprint
from flask_restful import Api

bp = Blueprint('members', __name__)
api = Api(bp)
