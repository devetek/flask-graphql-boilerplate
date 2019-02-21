from flask import jsonify
from flask_restful import Resource
from models.user import User


class Detail(Resource):

    def get(self, user_id):
        userData = {}
        user = User.query.filter_by(user_id=user_id).first()

        if user != None:
            userData = user.to_dict()

        return jsonify(userData)

    def delete(self, user_id):
        pass

    def put(self, user_id):
        pass
