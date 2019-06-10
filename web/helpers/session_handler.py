import base64
from flask import jsonify
from config import Config
from models.user import User

"""[Init Process For Session Management]

Define session flow management here, to init on platform init file.
This configuration base on Flask-Login requirement
"""

unauthorized_message = {
    "status": 401,
    "message": "You don't have access for this page."
}


def validate_session(user_id):
    return User.query.get(int(user_id))


def validate_session_header(request):
    # support third party oauth, (FB, Twitter, Google, Github)
    # request e.g: http://localhost:5000/member/me?api_key=1
    # TODO: need to working on key generatator and key integrator for third party
    api_key = request.args.get('api_key')

    if api_key:
        user = User.query.filter_by(user_id=int(api_key)).first()
        if user:
            return user

    # Basic Auth session support
    api_key = request.headers.get(Config.AUTH_HEADER_NAME)

    if api_key:
        api_key = api_key.replace('Basic ', '', 1)

        try:
            pass
            # TODO: generate oauth for apps session, decode oauth key here
            # api_key = base64.b64decode(api_key)
        except TypeError:
            pass

        user = User.query.filter_by(user_id=int(api_key)).first()

        if user:
            return user

    return None


def unauthorized_session():
    return jsonify(unauthorized_message)
