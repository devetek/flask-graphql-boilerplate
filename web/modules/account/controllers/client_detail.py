from flask import redirect
from flask_restful import Resource
from flask_jwt_extended import jwt_required
from models.account.client import AccountClient
from web.helpers import success_http_response
from web.helpers.error_handler import error_http_code


class ClientDetailController(Resource):
    @jwt_required
    def get(self, client_id):
        client_data = AccountClient.query.filter_by(
            client_id=client_id).first()

        if client_data is None:
            return error_http_code(404, {"message": "Client doesn't exist"})

        return success_http_response('Get client detail', True, client_data.to_dict())
