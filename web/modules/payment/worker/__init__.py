import time
import datetime
import threading
from helpers.createRedis import Create, R_KEY
from config import Config


class UnicodeThreadWorker(object):
    x_min = Config.MIN_UNIQ_CODE
    x_max = Config.MAX_UNIQ_CODE

    def __init__(self, interval=1000):
        self.interval = interval
        self.redis = Create().instance()

        process = threading.Thread(target=self.run, args=())
        process.daemon = True
        process.start()

    def run(self):
        while True:
            dic = {}
            x_min = self.x_min
            daily_tr = (self.x_max - self.x_min) + 1
            zrange_length = self.redis.zcount(R_KEY, "-inf", "+inf")

            if zrange_length == 0:
                for x in range(daily_tr):
                    dic[x_min] = x_min
                    x_min += 1

                self.redis.zadd(R_KEY, dic)

            time.sleep(self.interval)
