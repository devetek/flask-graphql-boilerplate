"""[Member login api]

References:
    - https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb

Returns:
    [dict] -- [data, status, message]

TODO:
- Optimize db query validation
- Standardize error message and improve input validator
- Split login username and email, to make easy on debugging
- Log error to Spirit Vessel (devetek logger service)
"""
import validators
from datetime import datetime
from flask_restful import Resource, reqparse
from models.account.client import AccountClient
from models.account.member import AccountMember, member_data_input_serializer
from models.account.email import AccountEmail
from web.helpers import success_http_response, cleaning_dict
from web.helpers.error_handler import error_http_code
from web.helpers.jwt_handler import generate_token

parser = reqparse.RequestParser()
parser.add_argument('X-Devetek-App-Id', required=True,
                    location='headers', type=int)
parser.add_argument('member_email', required=False)
parser.add_argument('member_username', required=False)
parser.add_argument('member_password',
                    help='Password cannot be blank', required=True)


class RegistrationController(Resource):
    def __init__(self):
        self.data = cleaning_dict(parser.parse_args())
        self.app_id = self.data['X-Devetek-App-Id']
        self.valid_member = member_data_input_serializer(self.data)
        self.return_member = self.data["member_email"] if "member_email" in self.data else self.data["member_username"]

    def post(self):
        try:
            if self.app_id is None:
                return success_http_response("You're not sending correct app identifier.", False)

            client = AccountClient.query.filter_by(
                client_id=self.app_id).first()

            if client is None:
                return success_http_response("App not registered in Devetek.", False)

            validate_input = self.input_validator()

            if validate_input["invalid_key"] != "":
                return success_http_response(validate_input["message"], False)

            if validate_input["valid_key"] != "member_username":
                member_email = AccountEmail.query.filter_by(
                    email_text=self.data["member_email"]).first()

                if member_email is not None:
                    return success_http_response("{} already registered in {}.".format(member_email.email_text, client.client_name), False)
            else:
                member = AccountMember.query.filter_by(
                    member_username=self.data["member_username"]).first()

                if member is not None:
                    return success_http_response("{} already registered in {}.".format(member.member_username, client.client_name), False)

            # Do register when user not exist and input is valid
            new_member = AccountMember(**self.valid_member)
            new_member.member_apps_ids.append(client)
            new_member_id = new_member.save()

            if validate_input["valid_key"] == "member_email":
                AccountEmail(
                    email_text=self.data["member_email"], email_member_id=new_member_id, email_primary=True).save()

            if (new_member_id):
                token = generate_token(new_member_id)

                return success_http_response('User {} was created.'.format(self.return_member), True, token)

            return success_http_response('Registration failed, please try again or contact administrator.', False)
        except Exception as error:
            # TODO: Log error to logger services
            return error_http_code(500, {"message": "Registration failed, something went wrong, please try again later."})

    def input_validator(self):
        valid_response = {
            "valid_key": "",
            "invalid_key": "",
            "message": "",
        }

        if self.app_id is None:
            valid_response["invalid_key"] = "X-Devetek-App-Id"
            valid_response["message"] = "Login failed, invalid app id, please send valid header app id."

            return valid_response

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
