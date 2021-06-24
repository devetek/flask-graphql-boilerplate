from flask_jwt_extended import get_jwt_identity, jwt_required
from flask_restful import Resource
from models.account.member import AccountMember, member_return_data_serializer
from models.account.members_client import AccountMembersClient
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
            return error_http_code(404, {"message": "Get me failed, no member found."})

        member_data_relation = AccountMembersClient.query.filter_by(
            mc_member_id=user_data).all()

        if member_data_relation is None:
            return error_http_code(404, {"message": "Get me failed, member not register in any app."})

        if member_data.member_email != None:
            [list_email.append(email.to_dict())
             for email in member_data.member_email]

        if member_data.member_phone != None:
            [list_phone.append(phone.to_dict())
             for phone in member_data.member_phone]

        if member_data.member_apps_ids != None:
            for index, app in enumerate(member_data.member_apps_ids):
                client_approved_to_app = app.to_dict()
                client_approved_to_app.update(
                    {"client_member_approve": member_data_relation[index].mc_is_approved})
                list_apps.append(client_approved_to_app)

        response = member_data.to_dict()
        response.update({"member_apps_ids": list_apps,
                         "member_phone": list_phone, "member_email": list_email})

        return success_http_response('Success get me', True, response)
