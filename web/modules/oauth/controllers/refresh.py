# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask_restful import Resource
from flask_jwt_extended import (
    jwt_refresh_token_required, get_jwt_identity, get_jti, get_raw_jwt, create_access_token)
from libraries.devetek.session import get_revoke_token, store_revoke_token
from web.helpers import success_http_response

"""[Refresh token for user]

Returns:
    [string] -- [New access token]
"""


class RefreshController(Resource):
    @jwt_refresh_token_required
    def post(self):
        current_user = get_jwt_identity()
        access_token = create_access_token(identity=current_user)
        access_jti = get_jti(encoded_token=access_token)
        jwt_store_token = store_revoke_token(access_jti, 'false')

        if jwt_store_token is not False:
            return success_http_response("Access token success regenerated", True, {'access_token': access_token})

        return success_http_response("Access token failed regenerated", False)
