from web import JWTManager
from helpers.createRedis import Create
from config import Config

storage = Create().instance()

PREFIX = "oauth:devetek:"
POSTFIX = ":token"


def token_key(name):
    return "oauth:devetek:" + name + ":token"


def refresh_token_key(name):
    return "oauth:devetek:" + name + ":refreshtoken"


def store_token(name, value=None, expired=Config.JWT_ACCESS_TOKEN_EXPIRES):
    try:
        return storage.set(token_key(name), value, expired)
    except:
        return False


def store_refresh_token(name, value=None, expired=Config.JWT_REFRESH_TOKEN_EXPIRES):
    try:
        return storage.set(refresh_token_key(name), value, expired)
    except:
        return False


def get_token(name):
    try:
        return storage.get(token_key(name))
    except:
        return False


def get_refresh_token(name):
    try:
        return storage.get(refresh_token_key(name))
    except:
        return False


class SessionObject:
    def __init__(self, id, username):
        self.id = id
        self.username = username
