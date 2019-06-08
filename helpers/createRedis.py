import redis
from config import Config

R_KEY = Config.KEY_UNIQ_CODE


class Create():
    def __init__(self, host=Config.REDIS_HOST_UNIQ_CODE, port=Config.REDIS_PORT_UNIQ_CODE, db=Config.REDIS_DB_UNIQ_CODE):
        self.host = host
        self.port = port
        self.db = db
        self.__r = redis.Redis(host=self.host, port=self.port, db=self.db)

    def instance(self):
        return self.__r
