from config import Config
from .error_handler import error_http_code
from libraries.devetek.session import get_revoke_token


def jwt_unauthorized_response(unauthorized_response):
    return error_http_code(401, None, True)


def jwt_revoked_token_response():
    return error_http_code(401, {"message": "Token already revoked, please re login."}, True)


def jwt_check_if_token_is_revoked(decrypted_token):
    jti = decrypted_token['jti']
    entry = get_revoke_token(jti)

    if entry is None:
        return True

    return entry == 'true'
