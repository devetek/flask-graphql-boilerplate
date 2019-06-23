# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask_restful import Resource, reqparse
from flask_jwt_extended import (
    jwt_refresh_token_required, get_jwt_identity, get_raw_jwt)


"""[Refresh token for user]

Returns:
    [string] -- [new access token]
"""


class RefreshController(Resource):
    @jwt_refresh_token_required
    def post(self):
        raw_data = get_raw_jwt()
        current_user = get_jwt_identity()

        print("RAW DATA: " + raw_data)
        print("USER DATA: " + current_user)

        # access_token = create_access_token(identity=current_user)
        return {'access_token': "access_token"}
