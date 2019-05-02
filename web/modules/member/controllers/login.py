from flask import jsonify
from flask_restful import Resource, reqparse, abort
from models.user import User
from libraries.hash import md5
from flask_login import login_user

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('email')
parser.add_argument('password')


class LoginController(Resource):

    def get(self):
        user_data = {}
        args = parser.parse_args(req=None, strict=False)

        if args['email'] is None or args['password'] is None:
            abort(401, message="Invalid params")

        user = User.query.filter_by(
            email=args['email'], password=md5(args['password'])).first()

        if user != None:
            user_data = user.to_dict()
            login_user(user, remember=True)

        return jsonify(user_data)
