# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask import current_app as app
from flask_jwt_extended import get_jwt, jwt_required
from flask_restful import Resource
from web.helpers import success_http_response


class LogoutController(Resource):
    def __init__(self):
        self.tps_jwt = app.extensions['tpJWT']

    @jwt_required
    def delete(self):
        jti = get_jwt()['jti']

        token = self.tps_jwt.session.get_token(jti)

        if token == 'true':
            return success_http_response("Logout success, access token already revoked.")

        revoke_token = self.tps_jwt.session.save_token(jti, 'true')

        if revoke_token is not False:
            return success_http_response("Logout success, access token revoked.")

        return success_http_response("Logout failed, access token cannot revoke.", False)
