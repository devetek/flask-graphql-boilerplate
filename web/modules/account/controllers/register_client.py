from flask_restful import Resource, reqparse
from flask_jwt_extended import jwt_required
from models.account.client import AccountClient, client_data_input_serializer
from web.helpers import cleaning_dict, success_http_response
from web.helpers.error_handler import error_http_code

parser = reqparse.RequestParser()
parser.add_argument('client_name',
                    help='Name cannot be blank', required=True)
parser.add_argument('client_description',
                    help='Description cannot be blank', required=True)
parser.add_argument('client_code',
                    help='Code cannot be blank', required=True)


class RegisterClientController(Resource):
    def __init__(self):
        self.data = cleaning_dict(parser.parse_args())

    @jwt_required
    def post(self):
        if AccountClient.query.filter_by(client_name=self.data['client_name']).first():
            return success_http_response('Client {} already exists'. format(self.data['client_name']), False)

        try:
            client_id = AccountClient(**self.data).save()

            if (client_id):
                return success_http_response(
                    'Client {} was created'.format(
                        self.data['client_name']),
                    True,
                    {"client_id": client_id})

            return success_http_response('Failed to insert data client, please try again or contact developers', False)
        except:
            return error_http_code(500, {'message': 'Something went wrong'})
