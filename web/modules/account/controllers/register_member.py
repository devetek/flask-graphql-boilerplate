import json
from flask_restful import Resource, reqparse
from models.account.member import AccountMember, member_data_input_serializer
from models.account.client import AccountClient
from models.account.email import AccountEmail
from models.account.phone import AccountPhone
from libraries.hash import generate_hash256
from web.helpers import cleaning_dict, success_http_response
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser()
parser.add_argument('member_username',
                    help='Username cannot be blank', required=True)
parser.add_argument('member_password',
                    help='Password cannot be blank', required=True)
parser.add_argument('member_email',
                    help='Email cannot be blank', required=True, action='append', type=dict)
parser.add_argument('member_phone',
                    help='Phone cannot be blank', required=True, action='append', type=dict)
parser.add_argument('member_apps_ids',
                    help='Apps cannot be blank', required=True, action='append', type=dict)


class RegisterMemberController(Resource):
    def __init__(self):
        self.queries = cleaning_dict(parser.parse_args())
        self.data = member_data_input_serializer(self.queries)

    def post(self):
        if AccountMember.query.filter_by(member_username=self.data['member_username']).first():
            return success_http_response('Client {} already exists'. format(self.data['member_username']), False)

        # try:
        member = AccountMember(**self.data)

        print(self.queries)

        if "member_apps_ids" in self.queries and len(self.queries['member_apps_ids']):
            print("Executed!")

            for app in self.queries['member_apps_ids']:
                if "client_id" in app and app["client_id"] is not None:
                    member.member_apps_ids.append(AccountClient(**app))

        # if member_id is not None:
        #     return success_http_response(
        #         'Member {} was created'.format(
        #             self.data['member_username']),
        #         True,
        #         {"member_id": member_id})

        return success_http_response('Failed to insert data member, please try again or contact developers', False)
        # except:
        #     return error_http_code(500, {'message': 'Something went wrong'})
