from flask import Blueprint
from flask_restful import Api
from flask_restful import reqparse


bp = Blueprint('book', __name__)
api = Api(bp)
