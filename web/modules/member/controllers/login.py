from flask import jsonify, redirect
from flask_restful import Resource, reqparse
from models.user import User
from libraries.hash import md5
from web.helpers.error_handler import error_http_code
from flask_login import login_user, current_user

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('email')
parser.add_argument('password')


class LoginController(Resource):

    def get(self):
        if hasattr(current_user, 'user_id'):
            return redirect("/member/me", code=302)

        user_data = {}
        args = parser.parse_args(req=None, strict=False)

        if args['email'] is None or args['password'] is None:
            error_http_code(401)

        user = User.query.filter_by(
            email=args['email'], password=md5(args['password'])).first()

        if user != None:
            user_data = user.to_dict()
            login_user(user, remember=True)

        return jsonify(user_data)

    def post(self):
        args = parser.parse_args()

        user = User.query.filter_by(
            email=args['email'], password=md5(args['password'])).first()

        if user != None:
            user_data = user.to_dict()
            login_user(user, remember=True)

        return jsonify(user_data)
