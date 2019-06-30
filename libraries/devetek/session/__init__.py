from config import Config
from web import JWTManager
from helpers.createRedis import Create

storage = Create(host=Config.REDIS_HOST_JWT,
                 port=Config.REDIS_PORT_JWT, db=Config.REDIS_DB_JWT).instance()

TOKEN_PREFIX = "jwt:token:revoked:devetek:"


def revoke_token_key(name):
    return TOKEN_PREFIX + name


def revoke_refresh_token_key(name):
    return TOKEN_PREFIX + name


def store_revoke_token(name, value=None, expired=Config.JWT_ACCESS_TOKEN_EXPIRES*2):
    try:
        return storage.set(revoke_token_key(name), value, expired)
    except:
        return False


def store_revoke_refresh_token(name, value=None, expired=Config.JWT_REFRESH_TOKEN_EXPIRES*2):
    try:
        return storage.set(revoke_refresh_token_key(name), value, expired)
    except:
        return False


def get_revoke_token(name):
    try:
        return storage.get(revoke_token_key(name))
    except:
        return False


def get_revoke_refresh_token(name):
    try:
        return storage.get(revoke_refresh_token_key(name))
    except:
        return False


class SessionObject:
    def __init__(self, id, username):
        self.id = id
        self.username = username
