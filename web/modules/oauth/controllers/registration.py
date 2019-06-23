# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask_restful import Resource, reqparse
from flask_jwt_extended import (create_access_token, create_refresh_token,
                                jwt_required, jwt_refresh_token_required, get_jwt_identity, get_raw_jwt)
from models.user import User, user_data_input_serializer
from datetime import datetime
from libraries.devetek.session import store_token, store_refresh_token
from web.helpers import success_http_response
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser()
parser.add_argument('username', help='Username cannot be blank', required=True)
parser.add_argument('password', help='Password cannot be blank', required=True)


class RegistrationController(Resource):
    def __init__(self):
        self.data = parser.parse_args()

    def post(self):
        if self.registration_validation == False:
            return success_http_response('Username only allow alphanumeric characters', False)

        if User.find_by_username(self.data['username']):
            return success_http_response('User {} already exists'. format(self.data['username']), False)

        try:
            new_data = user_data_input_serializer(self.data)

            user_id = User(**new_data).save_to_db()

            if (user_id):
                access_token = create_access_token(
                    identity=user_id)
                refresh_token = create_refresh_token(
                    identity=user_id)
                store_token(access_token, "")
                store_refresh_token(refresh_token, "")

                return success_http_response(
                    'User {} was created'.format(self.data['username']),
                    True,
                    {"access_token": access_token,
                     "refresh_token": refresh_token}
                )
        except BaseException as e:
            error_http_code(500, {'message': 'Something went wrong'})

    def registration_validation(self):
        if self.data['username'].isalnum() == False:
            return False

        return True
