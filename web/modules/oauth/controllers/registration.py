# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
import validators
from datetime import datetime
from flask_restful import Resource, reqparse
from flask_jwt_extended import (create_access_token, create_refresh_token,
                                jwt_required, jwt_refresh_token_required, get_jwt_identity, get_raw_jwt)
from models.account.member import AccountMember, member_data_input_serializer
from models.account.email import AccountEmail
from libraries.devetek.session import store_token, store_refresh_token
from web.helpers import success_http_response, cleaning_dict
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser()
parser.add_argument('member_email', required=False)
parser.add_argument('member_username', required=False)
parser.add_argument('member_password',
                    help='Password cannot be blank', required=True)


class RegistrationController(Resource):
    def __init__(self):
        self.data = cleaning_dict(parser.parse_args())
        self.valid_user = member_data_input_serializer(self.data)
        self.return_user = self.data["member_email"] if "member_email" in self.data else self.data["member_username"]

    def post(self):
        validate_input = self.registration_validation()

        if validate_input["invalid_key"] != "":
            return success_http_response(validate_input["message"], False)

        if validate_input["valid_key"] != "member_username":
            member = AccountEmail.query.filter_by(
                email_text=self.data["member_email"]).first()

        else:
            member = AccountMember.login_username_password(**self.data)

        print(member)

        if member is not None:
            member_dict = member.to_dict()

            member_id = member_dict["email_member_id"] if "email_member_id" in member_dict else member_dict["member_id"]

            print(member_id)

            token = self.generate_token(member_id)

            return success_http_response('User {} already exists.'. format(self.return_user), True, token)

        try:
            # Do register when user not exist and input is valid
            new_member_id = AccountMember(**self.valid_user).save()

            if validate_input["valid_key"] == "member_email":
                AccountEmail(
                    email_text=self.data["member_email"], email_member_id=new_member_id).save()

            if (new_member_id):
                token = self.generate_token(new_member_id)

                return success_http_response('User {} was created.'.format(self.return_user), True, token)

            return success_http_response('Failed to login/register, contact administrator.', False)
        except:
            error_http_code(
                500, {'message': 'Something went wrong, please try again later.'})

    def registration_validation(self):
        valid_response = {
            "valid_key": "",
            "invalid_key": "",
            "message": "",
        }

        if "member_email" in self.data:
            if not validators.email(self.data["member_email"]):
                valid_response["invalid_key"] = "member_email"
                valid_response["message"] = "Your email address is invalid. Please enter a valid address."
            else:
                valid_response["valid_key"] = "member_email"

        if "member_username" in self.data:
            if self.data['member_username'].isalnum() == False:
                valid_response["invalid_key"] = "member_username"
                valid_response["message"] = "Username only allow alphanumeric characters."
            else:
                valid_response["valid_key"] = "member_username"

        return valid_response

    def generate_token(self, member_id):
        access_token = create_access_token(
            identity=member_id)
        refresh_token = create_refresh_token(
            identity=member_id)
        store_token(access_token, "")
        store_refresh_token(refresh_token, "")

        return {"access_token": access_token, "refresh_token": refresh_token}
