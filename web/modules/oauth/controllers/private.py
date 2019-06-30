# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask_restful import Resource
from flask_jwt_extended import (
    jwt_required, get_jwt_identity, get_raw_jwt, get_jwt_claims)
from web.helpers import success_http_response


class PrivateController(Resource):
    @jwt_required
    def get(self):
        raw_data = get_raw_jwt()
        user_data = get_jwt_identity()
        custom_data = get_jwt_claims()

        return success_http_response("Get your token data", True, {
            'answer': 42,
            "jwt": raw_data,
            "identity": user_data,
            "custom": custom_data,
        })
