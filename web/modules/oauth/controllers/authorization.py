"""[Member login api]

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
from flask_jwt_extended import (
    create_access_token, create_refresh_token, get_jti)
from models import and_
from libraries.devetek.session import store_revoke_token, store_revoke_refresh_token
from models.account.members_client import AccountMembersClient
from models.account.member import AccountMember
from models.account.email import AccountEmail
from web.helpers import success_http_response, cleaning_dict
from web.helpers.error_handler import error_http_code
from libraries.hash import verify_hash256
from web.helpers.jwt_handler import generate_token

parser = reqparse.RequestParser()
parser.add_argument('X-Devetek-App-Id', required=True,
                    location='headers', type=int)
parser.add_argument('member_email', required=False)
parser.add_argument('member_username', required=False)
parser.add_argument('member_password',
                    help='Password cannot be blank', required=True)


class AuthorizationController(Resource):
    def __init__(self):
        self.data = cleaning_dict(parser.parse_args())
        self.app_id = self.data['X-Devetek-App-Id']
        self.return_member = self.data["member_email"] if "member_email" in self.data else self.data["member_username"]

    def post(self):
        try:
            validate_input = self.input_validator()

            if validate_input["invalid_key"] != "":
                return success_http_response(validate_input["message"], False)

            if validate_input["valid_key"] != "member_username":
                return self.login_email()
            else:
                return self.login_username()

        except Exception as error:
            # TODO: Log error to logger services
            return error_http_code(500, {"message": "Login failed, something went wrong, please try again later."})

    def login_email(self):
        member_email = AccountEmail.query.filter_by(
            email_text=self.data["member_email"]).first()

        if member_email is None:
            return success_http_response("Login failed, member with email {} notfound.".format(self.data["member_email"]), False)

        client = AccountMembersClient.query.filter(and_(
            AccountMembersClient.mc_client_id == self.app_id, AccountMembersClient.mc_member_id == member_email.email_member_id, AccountMembersClient.mc_is_approved == 3)).first()

        if client is None:
            return success_http_response("Login failed, {} not approved/registered.".format(self.data["member_email"]), False)

        if self.password_validator(client.account_member) == False:
            return success_http_response("Login failed, invalid password.", False)

        return self.generate_token(client.account_member)

    def login_username(self):
        member = AccountMember.query.filter_by(
            member_username=self.data["member_username"]).first()

        if member is None:
            return success_http_response("Login failed, member with username {} notfound.".format(self.data["member_username"]), False)

        client = AccountMembersClient.query.filter(and_(AccountMembersClient.mc_client_id == self.app_id,
                                                        AccountMembersClient.mc_member_id == member.member_id, AccountMembersClient.mc_is_approved == 3)).first()

        if client is None:
            return success_http_response("Login failed, {} not approved/registered.".format(self.data["member_username"]), False)

        if self.password_validator(client.account_member) == False:
            return success_http_response("Login failed, invalid password.", False)

        return self.generate_token(client.account_member)

    def generate_token(self, member):
        token = generate_token(member.member_id)

        if token["access_token"]:
            return success_http_response('Success generate session/token for {}.'. format(self.return_member), True, token)

        return success_http_response('Login failed, please try again or contact administrator.', True, token)

    def password_validator(self, member):
        is_password_valid = verify_hash256(
            self.data["member_password"], member.member_password)

        return is_password_valid

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
