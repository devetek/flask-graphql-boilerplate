from flask import jsonify, redirect
from flask_restful import Resource
from flask_login import current_user, login_required


class MeController(Resource):

    @login_required
    def get(self):
        if hasattr(current_user, 'user_id') is False:
            return redirect("/member/login", code=302)

        return jsonify(current_user.to_dict())
