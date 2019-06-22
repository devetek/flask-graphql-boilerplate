# reference: https://codeburst.io/jwt-authorization-in-flask-c63c1acf4eeb
from flask_restful import Resource, reqparse
from models.user import User
from datetime import datetime
from libraries.hash import md5

parser = reqparse.RequestParser()
parser.add_argument('username', help = 'Username cannot be blank', required = True)
parser.add_argument('password', help = 'Password cannot be blank', required = True)

class RegistrationController(Resource):
    def post(self):
        data = parser.parse_args()
        
        if User.find_by_username(data['username']):
          return {'message': 'User {} already exists'. format(data['username'])}

        new_user = User(
            username = data['username'],
            password = md5(data['password']),
            fullname = "",
            birthday = datetime.today().strftime('%Y-%m-%d'),
            address = "",
            postal = 0,
            district_id = 0,
            province_id = 0,
            country_id = 0,
            telp = "",
            phone = "",
            email = "",
            gender = "",
            religi = "",
            aboutme = "",
            joindate = datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            status = 1
        )

        new_user.save_to_db()
        
        try:
            new_user.save_to_db()
            return {
                'message': 'User {} was created'.format( data['username'])
            }
        except BaseException as e:
            return {'message': 'Something went wrong'}, 500
