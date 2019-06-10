from flask import jsonify
from flask_restful import Resource, reqparse
from web.helpers.error_handler import error_http_code
from models.user import User
from libraries.hash import md5

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('with', type=str)
parser.add_argument('user_id', type=int)
parser.add_argument('email', type=str)
parser.add_argument('password', type=str)


class DetailController(Resource):
    def get(self):
        args = parser.parse_args()
        with_param = args['with']

        if with_param is None:
            return self.get_with_all()

        method_name = 'get_with_' + str(args['with'])
        method = getattr(self, method_name, lambda: "Invalid param")

        return method()

    def post(self):
        pass

    def delete(self):
        pass

    def put(self):
        pass

    def get_with_all(self):
        args = parser.parse_args(req=None, strict=False)
        # don't use this on many case, this used just for example
        # use static args instaead this, to increase code peformance
        args = {k: v for k, v in args.items() if v is not None}

        if "with" in args:
            del args["with"]

        if "password" in args:
            args['password'] = md5(args['password'])

        user = User.query.filter_by(**args).first()

        if user is None:
            error_http_code(404, {message: "User doesn't exist"})

        return jsonify(user.to_dict())
