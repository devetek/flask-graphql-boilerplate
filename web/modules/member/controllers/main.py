
import hashlib
from flask import jsonify
from flask_restful import Resource, reqparse
from models.user import User

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('page', type=int)
parser.add_argument('size', type=int)


class MainController(Resource):
    def get(self):
        user_data = []
        args = parser.parse_args(req=None, strict=False)
        limit = 5 if args['size'] is None else args['size']
        offset = 0 if args['page'] is None else (args['page']*limit) - limit

        print(offset)
        print(limit)

        user_list = User.query[offset:limit]

        if user_list != None:
            [user_data.append(user.to_dict()) for user in user_list]

        return jsonify(user_data)

    def post(self):
        pass
