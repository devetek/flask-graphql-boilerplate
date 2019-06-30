from flask_restful import Resource, reqparse
from flask_jwt_extended import jwt_required, get_jwt_identity
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


class UpdateMemberController(Resource):
    def __init__(self):
        self.queries = cleaning_dict(parser.parse_args())
        self.data = member_data_input_serializer(self.queries)

    @jwt_required
    def put(self, member_id):
        user_session_id = get_jwt_identity()

        if user_session_id != member_id:
            return error_http_code(401)

        try:
            if "member_username" in self.queries:
                other_member = AccountMember.query.filter(
                    AccountMember.member_username == self.data['member_username']).filter(member_id != member_id).first()

                if other_member is not None:
                    return success_http_response("Username already taken by other member, please use others.", False)

            member = AccountMember.query.filter_by(member_id=member_id).first()

            # Update data app ID
            if "member_apps_ids" in self.queries and len(self.queries['member_apps_ids']):
                for new_app in self.queries['member_apps_ids']:
                    if "client_id" in new_app and new_app["client_id"] is not None:
                        new_client = AccountClient.query.filter_by(
                            client_id=new_app["client_id"]).first()

                        if new_client is not None and new_client not in member.member_apps_ids:
                            member.member_apps_ids.append(new_client)

            # Update data email
            existing_email_count = AccountEmail.query.filter_by(
                email_member_id=member_id).count()

            email_quota = 2 - existing_email_count

            if "member_email" in self.queries:
                if len(self.queries['member_email']) > email_quota:
                    return success_http_response('Maximum 2 emails per account, your email quota {} left.'.format(email_quota), False)

                if email_quota != 0:
                    if "member_email" in self.queries and len(self.queries['member_email']):
                        for new_email in self.queries['member_email']:
                            if new_email["email_text"] is None:
                                return success_http_response("You're send invalid email.", False)

                            check_new_email_to_others = AccountEmail.query.filter(
                                AccountEmail.email_text == new_email["email_text"]).filter(AccountEmail.email_member_id != member_id).count()
                            check_new_email_to_me = AccountEmail.query.filter(
                                AccountEmail.email_text == new_email["email_text"]).filter(AccountEmail.email_member_id == member_id).first()

                            if check_new_email_to_others:
                                return success_http_response('Email {} already registered for other member.'. format(new_email["email_text"]), False)

                            if check_new_email_to_me:
                                check_new_email_to_me.email_primary = new_email["email_primary"]
                            else:
                                member.member_email.append(AccountEmail(
                                    email_primary=new_email["email_primary"], email_text=new_email["email_text"], email_member_id=member_id))

            # Update data phone
            existing_phone_count = AccountPhone.query.filter_by(
                phone_member_id=member_id).count()
            phone_quota = 2 - existing_phone_count

            if "member_phone" in self.queries:
                if len(self.queries['member_phone']) > phone_quota:
                    return success_http_response('Maximum 2 phones per account, your phone quota {} left.'.format(phone_quota), False)

                if phone_quota != 0:
                    if "member_phone" in self.queries and len(self.queries['member_phone']):
                        for new_phone in self.queries['member_phone']:
                            if new_phone["phone_text"] is None:
                                return success_http_response("You're send invalid phone.", False)

                            check_new_phone_to_others = AccountPhone.query.filter(
                                AccountPhone.phone_text == new_phone["phone_text"]).filter(AccountPhone.phone_member_id != member_id).count()
                            check_new_phone_to_me = AccountPhone.query.filter(
                                AccountPhone.phone_text == new_phone["phone_text"]).filter(AccountPhone.phone_member_id == member_id).first()

                            if check_new_phone_to_others:
                                return success_http_response('phone {} already registered for other member.'. format(new_phone["phone_text"]), False)

                            if check_new_phone_to_me:
                                check_new_phone_to_me.phone_primary = new_phone["phone_primary"]
                            else:
                                member.member_phone.append(AccountPhone(
                                    phone_primary=new_phone["phone_primary"], phone_text=new_phone["phone_text"], phone_member_id=member_id))

            member_id = member.update(**self.queries)

            if (member_id):
                return success_http_response(
                    'Member {} was created'.format(
                        member_id),
                    True,
                    {"member_id": member_id})

            return success_http_response('Failed to update data member, please try again or contact developers', False)
        except Exception as error:
            # TODO: Log error to logger services
            return error_http_code(500, {"message": "Something went wrong, please try again later."})
