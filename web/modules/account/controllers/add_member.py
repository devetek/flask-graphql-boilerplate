from flask_restful import Resource, reqparse
from flask_jwt_extended import jwt_required
from models.account.member import AccountMember, member_data_input_serializer
from models.account.client import AccountClient
from models.account.email import AccountEmail
from models.account.phone import AccountPhone
from web.helpers import cleaning_dict, success_http_response
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser(bundle_errors=True)
parser.add_argument('member_username')
parser.add_argument('member_fullname')
parser.add_argument('member_gender')
parser.add_argument('member_place_of_birth')
parser.add_argument('member_birth_of_date')
parser.add_argument('member_religion')
parser.add_argument('member_password')
parser.add_argument('member_aboutme')
parser.add_argument('member_status', type=int)
parser.add_argument('member_email', action='append', type=dict)
parser.add_argument('member_phone', action='append', type=dict)
parser.add_argument('member_apps_ids', action='append', type=dict)


class AddMemberController(Resource):
    def __init__(self):
        self.queries = cleaning_dict(parser.parse_args())
        self.data = member_data_input_serializer(self.queries)

    @jwt_required
    def post(self):
        if "member_username" in self.queries:
            if AccountMember.query.filter_by(member_username=self.data['member_username']).first():
                return success_http_response('Member {} already exists'. format(self.data['member_username']), False)

        try:
            member = AccountMember(**self.data)

            if "member_apps_ids" in self.queries and len(self.queries['member_apps_ids']):
                for app in self.queries['member_apps_ids']:
                    if "client_id" in app and app["client_id"] is not None:
                        client = AccountClient.query.filter_by(
                            client_id=app["client_id"]).first()

                        if client is None:
                            return success_http_response("You're not sending correct data app identifier.", False)

                        member.member_apps_ids.append(client)

            if "member_email" in self.queries and len(self.queries['member_email']):
                has_primary = False

                for email in self.queries['member_email']:
                    if has_primary == True:
                        email["email_primary"] = False

                    if "email_primary" in email and email["email_text"] is not None:
                        if email["email_primary"] == True:
                            has_primary = True

                    if AccountEmail.query.filter_by(email_text=email["email_text"]).first():
                        return success_http_response('Email {} already exists'. format(email["email_text"]), False)

                    member.member_email.append(AccountEmail(**email))

            if "member_phone" in self.queries and len(self.queries['member_phone']):
                has_primary = False

                for phone in self.queries['member_phone']:
                    if has_primary == True:
                        phone["phone_primary"] = False

                    if "phone_primary" in phone and phone["phone_text"] is not None:
                        if phone["phone_primary"] == True:
                            has_primary = True

                    if AccountPhone.query.filter_by(phone_text=phone["phone_text"]).first():
                        return success_http_response('Phone {} already exists'. format(phone["phone_text"]), False)

                    member.member_phone.append(AccountPhone(**phone))

            if member is not None:
                member_id = member.save()

                if (member_id):
                    member_name = self.queries['member_username'] if "member_username" in self.queries else self.queries["member_fullname"]

                    return success_http_response(
                        'Member {} was created with ID {}'.format(
                            member_name, member_id),
                        True,
                        {"member_id": member_id})

            return success_http_response('Failed to insert data member, please try again or contact developers', False)
        except Exception as error:
            # TODO: Log error to logger services
            return error_http_code(500, {"message": "Something went wrong, please try again later."})
