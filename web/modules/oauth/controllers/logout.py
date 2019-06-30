# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask_restful import Resource
from flask_jwt_extended import (jwt_required, get_raw_jwt)
from libraries.devetek.session import store_revoke_token, get_revoke_token
from web.helpers import success_http_response


class LogoutController(Resource):
    @jwt_required
    def delete(self):
        jti = get_raw_jwt()['jti']

        token = get_revoke_token(jti)

        if token == 'true':
            return success_http_response("Logout success, access token already revoked.")

        revoke_token = store_revoke_token(jti, 'true')

        if revoke_token is not False:
            return success_http_response("Logout success, access token revoked.")

        return success_http_response("Logout failed, access token cannot revoke.", False)
