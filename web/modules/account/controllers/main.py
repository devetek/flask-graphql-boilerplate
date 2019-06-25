
import hashlib
from flask import jsonify
from flask_restful import Resource, reqparse
from models.account.member import AccountMember
from web.helpers import pagination

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('page', type=int)
parser.add_argument('size', type=int)


class MainController(Resource):
    def get(self):
        user_data = []
        args = parser.parse_args(req=None, strict=False)
        paginate = pagination(**args)
        user_list = AccountMember.query.offset(
            paginate['offset']).limit(paginate['limit'])

        if user_list != None:
            [user_data.append(user.to_dict()) for user in user_list]

        return jsonify(user_data)

    def post(self):
        pass
