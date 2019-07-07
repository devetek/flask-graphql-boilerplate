from flask_restful import Resource, reqparse
from flask_jwt_extended import jwt_required
from models.account.client import AccountClient, client_data_input_serializer
from web.helpers import cleaning_dict, success_http_response
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser()
parser.add_argument('client_name')
parser.add_argument('client_description')
parser.add_argument('client_code')


class RegisterClientController(Resource):
    def __init__(self):
        self.data = cleaning_dict(parser.parse_args())
        self.input_error_message = {}

    @jwt_required
    def post(self):
        self.input_validator()

        if self.input_error_message:
            error_http_code(400, {"message": self.input_error_message})

        if AccountClient.query.filter_by(client_code=self.data['client_code']).first():
            return success_http_response('Create data client failed, client code {} already exists'. format(self.data['client_code']), False)

        if AccountClient.query.filter_by(client_name=self.data['client_name']).first():
            return success_http_response('Create data client failed, client name {} already exists.'. format(self.data['client_name']), False)

        try:
            client_id = AccountClient(**self.data).save()

            if (client_id):
                return success_http_response(
                    'Success create client {}, with new id {}.'.format(
                        self.data['client_name'], client_id),
                    True,
                    {"client_id": client_id})

            return success_http_response('Create client failed, please try again or contact administrator.', False)
        except Exception as error:
            # TODO: Log error to logger services
            return error_http_code(500, {"message": "Create client failed, something went wrong, please try again later."})

    def input_validator(self):
        if ("client_name" not in self.data) or ("client_name" in self.data and self.data["client_name"] == ""):
            self.input_error_message["client_name"] = "Client name cannot be blank"

        if ("client_description" not in self.data) or ("client_description" in self.data and self.data["client_description"] == ""):
            self.input_error_message["client_description"] = "Client description cannot be blank"

        if ("client_code" not in self.data) or ("client_code" in self.data and self.data["client_code"] == ""):
            self.input_error_message["client_code"] = "Client code cannot be blank"

        if "client_code" in self.data and len(self.data["client_code"]) < 3:
            self.input_error_message["client_code"] = "client code minimum characters are 3"

        if "client_code" in self.data and len(self.data["client_code"]) > 3:
            self.input_error_message["client_code"] = "client code maximum characters are 3"

        return self.input_error_message
