from flask_restful import Resource
from flask_jwt_extended import (
    jwt_required, get_jwt_identity)
from models.account.member import AccountMember, member_return_data_serializer
from web.helpers import success_http_response
from web.helpers.error_handler import error_http_code


class MemberMeController(Resource):
    @jwt_required
    def get(self):
        list_email = []
        list_phone = []
        list_apps = []

        user_data = get_jwt_identity()
        member_data = AccountMember.query.filter_by(
            member_id=user_data).first()

        if member_data is None:
            return error_http_code(404, {"message": "Get data me failed, please contact administrator."})

        if member_data.member_email != None:
            [list_email.append(email.to_dict())
             for email in member_data.member_email]

        if member_data.member_phone != None:
            [list_phone.append(phone.to_dict())
             for phone in member_data.member_phone]

        if member_data.member_apps_ids != None:
            [list_apps.append(app.to_dict())
             for app in member_data.member_apps_ids]

        response = member_data.to_dict()
        response.update({"member_apps_ids": list_apps,
                         "member_phone": list_phone, "member_email": list_email})

        return success_http_response('Get my data', True, response)
