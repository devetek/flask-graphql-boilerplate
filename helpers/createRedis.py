import redis
from config import Config


class Create():
    def __init__(self, host='localhost', port='6379', db=0):
        self.host = host
        self.port = port
        self.db = db
        self.__r = redis.Redis(host=self.host, port=self.port, db=self.db)

    def instance(self):
        return self.__r
