from flask import jsonify
from flask_restful import Resource, reqparse
from web.helpers.error_handler import error_http_code
from models.account.member import AccountMember, member_data_input_serializer
from models.account.client import AccountClient
from libraries.hash import generate_hash256
from web.helpers import cleaning_dict

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('with', type=str)
parser.add_argument('member_id', type=int)
parser.add_argument('member_username', type=str)


class DetailController(Resource):
    def __init__(self):
        self.queries = parser.parse_args()
        self.valid_queries = member_data_input_serializer(self.queries)
        self.clean_queries = cleaning_dict(self.queries)

    def get(self):
        if self.queries["with"] is None:
            print("DIDIe")
            return self.get_with_all()

        method_name = 'get_with_' + str(self.queries['with'])
        method = getattr(self, method_name, lambda: "Invalid param")

        return method()

    def post(self):
        pass

    def delete(self):
        pass

    def put(self):
        pass

    def get_with_all(self):
        member = AccountMember.query.filter_by(**self.clean_queries).first()

        try:
            # user.delete() // delete member
            pass
        except:
            error_http_code(
                404, {"message": "Fail to delete, user doesn't exist"})

        if member is None:
            error_http_code(404, {"message": "User doesn't exist"})

        return jsonify(member.to_dict())
