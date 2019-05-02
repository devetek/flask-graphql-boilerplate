
import hashlib
from flask import jsonify
from flask_restful import Resource
from models.user import User


class MainController(Resource):

    def get(self, offset=0, limit=5):
        """[get all users]

        Returns:
          [object] -- [How To Test: curl http://localhost:5000/member]
        """
        userData = []
        users = User.query[offset:limit]

        if users != None:
            [userData.append(user.to_dict()) for user in users]

        return jsonify(userData)

    def post(self):
        pass
