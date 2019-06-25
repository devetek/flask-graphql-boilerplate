from flask import jsonify, redirect
from flask_restful import Resource, reqparse
from models.account.member import AccountMember
from libraries.hash import generate_hash256, verify_hash256
from web.helpers.error_handler import error_http_code
from flask_login import login_user, current_user

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('member_username')
parser.add_argument('member_password')


class LoginController(Resource):
    def __init__(self):
        pass

    def get(self):
        if hasattr(current_user, 'user_id'):
            return redirect("/member/me", code=302)

        user_data = {}
        args = parser.parse_args(req=None, strict=False)

        if args['member_username'] is None or args['member_password'] is None:
            error_http_code(401)

        user = AccountMember.query.filter_by(
            member_username=args['member_username'], member_password=generate_hash256(args['member_password'])).first()

        if user != None:
            user_data = user.to_dict()
            login_user(user, remember=True)

        return jsonify(user_data)

    def post(self):
        args = parser.parse_args()

        user = AccountMember.query.filter_by(
            member_username=args['member_username'], member_password=generate_hash256(args['member_password'])).first()

        if user != None:
            user_data = user.to_dict()
            login_user(user, remember=True)

        return jsonify(user_data)
