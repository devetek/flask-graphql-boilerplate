# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
import validators
from flask import request
from datetime import datetime
from flask_restful import Resource, reqparse
from flask_jwt_extended import (
    create_access_token, create_refresh_token, get_jti)
from libraries.devetek.session import store_revoke_token, store_revoke_refresh_token
from models.account.client import AccountClient
from models.account.member import AccountMember, member_data_input_serializer
from models.account.email import AccountEmail
from web.helpers import success_http_response, cleaning_dict
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser()
parser.add_argument('member_email', required=False)
parser.add_argument('member_username', required=False)
parser.add_argument('member_password',
                    help='Password cannot be blank', required=True)


class AuthorizationController(Resource):
    def __init__(self):
        self.app_id = request.headers['X-Devetek-App-Id']
        self.data = cleaning_dict(parser.parse_args())
        self.valid_user = member_data_input_serializer(self.data)
        self.return_user = self.data["member_email"] if "member_email" in self.data else self.data["member_username"]

    def post(self):
        is_user_registered = False
        client = AccountClient.query.filter_by(client_id=self.app_id).first()

        if self.app_id is None or client is None:
            return success_http_response("You're not sending correct data app identifier.", False)

        validate_input = self.registration_validation(client)

        if validate_input["invalid_key"] != "":
            return success_http_response(validate_input["message"], False)

        if validate_input["valid_key"] != "member_username":
            member_email = AccountEmail.query.filter_by(
                email_text=self.data["member_email"]).first()

            member = None if member_email is None else AccountMember.query.filter_by(
                member_id=member_email.email_member_id).first()
        else:
            member = AccountMember.login_username_password(**self.data)

        if member is not None:
            member_dict = member.to_dict()

            if member.member_apps_ids is not None:
                for app in member.member_apps_ids:
                    if app.client_id == int(self.app_id):
                        is_user_registered = True

            if is_user_registered == False:
                return success_http_response("You're not registered in this app.", False)

            member_id = member_dict["email_member_id"] if "email_member_id" in member_dict else member_dict["member_id"]

            token = self.generate_token(member_id)

            if token["access_token"]:
                return success_http_response('{} success create session/token.'. format(self.return_user), True, token)

            return success_http_response('{} fail create session/token, contact administrator.'. format(self.return_user), True, token)

        try:
            # Do register when user not exist and input is valid
            new_member = AccountMember(**self.valid_user)
            new_member.member_apps_ids.append(client)
            new_member_id = new_member.save()

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

    def registration_validation(self, client):
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

        access_jti = get_jti(encoded_token=access_token)
        jwt_store_token = store_revoke_token(access_jti, 'false')
        refresh_jti = get_jti(encoded_token=refresh_token)
        jwt_store_refresh_token = store_revoke_refresh_token(
            refresh_jti, 'false')

        if jwt_store_token is not False and jwt_store_refresh_token is not False:
            return {"access_token": access_token, "refresh_token": refresh_token}

        return {"access_token": "", "refresh_token": "", "custom_error": "Failed to store session."}
