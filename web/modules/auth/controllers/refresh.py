# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask import current_app as app
from flask_jwt_extended import (create_access_token, get_jti, get_jwt_identity,
                                jwt_required)
from flask_restful import Resource
from web.helpers import success_http_response

"""[Refresh token for user]

Returns:
    [string] -- [New access token]
"""


class RefreshController(Resource):
    def __init__(self):
        self.tps_jwt = app.extensions['tpJWT']

    @jwt_required
    def post(self):
        current_user = get_jwt_identity()
        access_token = create_access_token(identity=current_user)
        access_jti = get_jti(encoded_token=access_token)
        jwt_store_token = self.tps_jwt.session.save_token(access_jti, 'false')

        if jwt_store_token is not False:
            return success_http_response("Access token success regenerated", True, {'access_token': access_token})

        return success_http_response("Access token failed regenerated", False)
