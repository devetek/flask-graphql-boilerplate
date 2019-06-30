from config import Config
from flask_jwt_extended import (
    create_access_token, create_refresh_token, get_jti)
from .error_handler import error_http_code
from libraries.devetek.session import get_revoke_token, store_revoke_token, store_revoke_refresh_token


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


def generate_token(member_id):
    access_token = create_access_token(
        identity=member_id)
    refresh_token = create_refresh_token(
        identity=member_id)

    access_jti = get_jti(encoded_token=access_token)
    jwt_store_token = store_revoke_token(access_jti, 'false')
    refresh_jti = get_jti(encoded_token=refresh_token)
    jwt_store_refresh_token = store_revoke_refresh_token(
        refresh_jti, 'false')

    if jwt_store_token is not False and jwt_store_refresh_token is not False:
        return {"access_token": access_token, "refresh_token": refresh_token}

    return {"access_token": "", "refresh_token": "", "custom_error": "Failed to store session."}
