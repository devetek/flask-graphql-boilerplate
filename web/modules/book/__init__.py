from flask import Blueprint
from flask_restful import Api
from flask_restful import reqparse

"""[fake databse just for fun]
"""
BOOKS = {
    'book1': {'author': 'Nedya'},
    'book2': {'author': 'Amrih'},
    'book3': {'author': 'Prakasa'},
}

bp = Blueprint('book', __name__)
api = Api(bp)


"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('author')
