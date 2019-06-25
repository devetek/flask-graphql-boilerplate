from flask import jsonify
from config import Config
from flask_restful import Resource
from flask_login import logout_user, login_required


class LogoutController(Resource):
    message = {
        "status": 200,
        "message": "Thanks for using " + Config.APP_NAME
    }

    @login_required
    def get(self):
        logout_user()

        return jsonify(self.message)
