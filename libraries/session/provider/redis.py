from config import config
from helpers.createRedis import Create


class RedisProvider():
    def __init__(self, host, port, db):
        self._storage = Create(host=host,  port=port, db=db).instance()

    def key_token(self, name):
        return config.TOKEN_PREFIX + name

    def key_token_r(self, name):
        return config.TOKEN_PREFIX + name

    def save_token(self, name, value=None, expired=3600):
        try:
            return self._storage.set(self.key_token(name), value, expired)
        except Exception as error:
            print("======= error =======")
            print(error)
            print("======= error =======")

            # TODO: Log error to logger services
            # logger(error)
            return False

    def save_token_r(self, name, value=None, expired=7200):
        try:
            return self._storage.set(self.key_token_r(name), value, expired)
        except Exception as error:
            # TODO: Log error to logger services
            # logger(error)
            return False

    def get_token(self, name):
        try:
            return self._storage.get(self.key_token(name))
        except Exception as error:
            # TODO: Log error to logger services
            # logger(error)
            return False

    def get_token_r(self, name):
        try:
            return self._storage.get(self.key_token_r(name))
        except Exception as error:
            # TODO: Log error to logger services
            # logger(error)
            return False
