
import hashlib
from config import Config
from flask import jsonify
from flask_restful import Resource
from flask_login import current_user, login_required
from models.user import User


class MeController(Resource):

    @login_required
    def get(self):
        return jsonify(current_user.to_dict())
