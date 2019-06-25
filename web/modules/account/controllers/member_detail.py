from flask import redirect
from flask_restful import Resource
from flask_login import current_user, login_required
from models.account.client import AccountClient
from models.account.member import AccountMember
from models.account.email import AccountEmail
from models.account.phone import AccountPhone
from web.helpers import success_http_response
from web.helpers.error_handler import error_http_code


class MemberDetailController(Resource):
    def get(self, member_id):
        list_email = []
        list_phone = []
        list_apps = []

        member_data = AccountMember.query.filter_by(
            member_id=member_id).first()

        if member_data is None:
            return error_http_code(404, {"message": "Member doesn't exist"})

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

        return success_http_response('Get member data', True, response)
