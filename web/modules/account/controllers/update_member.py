"""[Member update api]

Returns:
    [dict] -- [data, status, message]

TODO:
- Create input validator
- Standardize error message
- Optimize db query validation
- Move email/phone quota to feature and configurable
- Split update/save data [app, email, phone] to db, to make easy on debugging
- Log error to Spirit Vessel (devetek logger service)
"""

from flask_restful import Resource, reqparse
from flask_jwt_extended import jwt_required
from models.account.member import AccountMember
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

    @jwt_required
    def put(self, member_id):
        if "member_username" in self.queries:
            other_member = AccountMember.query.filter(
                AccountMember.member_username == self.queries['member_username']).filter(member_id != member_id).first()

            if other_member is not None:
                return success_http_response("Sorry, that username already taken.", False)

        member = AccountMember.query.filter_by(member_id=member_id).first()

        if member is None:
            return error_http_code(404, {"message": "Update member failed, no member found."})

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

        email_quota = 1 - existing_email_count

        if "member_email" in self.queries:
            if len(self.queries['member_email']) > email_quota:
                return success_http_response('Maximum 1 emails per account, your email quota {} left.'.format(email_quota), False)

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
                            return success_http_response('email is already taken by other member.', False)

                        if check_new_email_to_me:
                            if "email_primary" in new_email:
                                check_new_email_to_me.email_primary = new_email["email_primary"]
                        else:
                            member.member_email.append(AccountEmail(
                                email_primary=new_email["email_primary"], email_text=new_email["email_text"], email_member_id=member_id))

        # Update data phone
        existing_phone_count = AccountPhone.query.filter_by(
            phone_member_id=member_id).count()
        phone_quota = 1 - existing_phone_count

        if "member_phone" in self.queries:
            if len(self.queries['member_phone']) > phone_quota:
                return success_http_response('Maximum 1 phones per account, your phone quota {} left.'.format(phone_quota), False)

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
                            if "phone_primary" in new_phone:
                                check_new_phone_to_me.phone_primary = new_phone["phone_primary"]
                        else:
                            member.member_phone.append(AccountPhone(
                                phone_primary=new_phone["phone_primary"], phone_text=new_phone["phone_text"], phone_member_id=member_id))

        member_id = member.update(**self.queries)

        try:
            if (member_id):
                return success_http_response(
                    'Member {} was updated'.format(
                        member_id),
                    True,
                    {"member_id": member_id})

            return success_http_response('Failed to update data member, please try again or contact developers', False)
        except Exception as error:
            # TODO: Log error to logger services
            print(error)

            return error_http_code(500, {"message": "Something went wrong, please try again later."})
