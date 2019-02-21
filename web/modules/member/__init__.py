from flask import Blueprint
from flask_restful import Api
from flask_restful import reqparse

bp = Blueprint('members', __name__)
api = Api(bp)

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('user_id')
parser.add_argument('username')
