from flask import redirect
from flask_jwt_extended import jwt_required
from flask_restful import Resource

from models.account.client import AccountClient
from models.account.email import AccountEmail
from models.account.member import AccountMember, member_return_data_serializer
from models.account.phone import AccountPhone
from web.helpers import success_http_response
from web.helpers.error_handler import error_http_code


class MemberDetailController(Resource):
    @jwt_required
    def get(self, member_id):
        list_email = []
        list_phone = []

        member_data = AccountMember.query.filter_by(
            member_id=member_id).first()

        if member_data is None:
            return error_http_code(404, {"message": "Get member failed, no member data found"})

        if member_data.member_email != None:
            [list_email.append(email.to_dict())
             for email in member_data.member_email]

        if member_data.member_phone != None:
            [list_phone.append(phone.to_dict())
             for phone in member_data.member_phone]

        response = member_data.to_dict()
        response.update({"member_phone": list_phone,
                         "member_email": list_email})
        response = member_return_data_serializer(response)

        return success_http_response('Success get member by id', True, response)
