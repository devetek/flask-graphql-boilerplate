from flask_jwt_extended import (JWTManager, create_access_token,
                                create_refresh_token, get_jti)

from libraries.session import Session

from .error_handler import error_http_code


class JwtHandler():
    def __init__(self, app):
        self.jwt = JWTManager(app)
        self.session = Session(app.config.get('REDIS_HOST_JWT'), app.config.get('REDIS_PORT_JWT'), app.config.get(
            'REDIS_DB_JWT'), app.config.get('JWT_ACCESS_TOKEN_EXPIRES'), app.config.get('JWT_REFRESH_TOKEN_EXPIRES'))

        self.jwt.expired_token_loader(self._jwt_unauthorized_response)
        self.jwt.unauthorized_loader(self._jwt_unauthorized_response)
        self.jwt.invalid_token_loader(self._jwt_unauthorized_response)
        self.jwt.revoked_token_loader(self._jwt_revoked_token_response)
        self.jwt.token_in_blacklist_loader(self._jwt_check_if_token_is_revoked)

        if not hasattr(app, 'extensions'):   # pragma: no cover
            app.extensions = {}
        app.extensions['tps-jwt'] = self

    def _jwt_unauthorized_response(self, unauthorized_response):
        return error_http_code(401, None, True)

    def _jwt_revoked_token_response(self):
        return error_http_code(401, {"message": "Token already revoked, please re login."}, True)

    def _jwt_check_if_token_is_revoked(self, decrypted_token):
        jti = decrypted_token['jti']
        entry = self.session.get_token(jti)
        is_revoke = entry.decode("utf8") if entry else None

        if is_revoke is None:
            return True

        return is_revoke == 'true'

    def generate_token(self, member_id):
        access_token = create_access_token(
            identity=member_id)
        refresh_token = create_refresh_token(
            identity=member_id)

        access_jti = get_jti(encoded_token=access_token)
        jwt_store_token = self.session.save_token(access_jti, 'false')
        refresh_jti = get_jti(encoded_token=refresh_token)
        jwt_store_refresh_token = self.session.save_token_r(
            refresh_jti, 'false')

        if jwt_store_token is not False and jwt_store_refresh_token is not False:
            return {"access_token": access_token, "refresh_token": refresh_token}

        return {"access_token": "", "refresh_token": "", "custom_error": "Failed to store session."}
