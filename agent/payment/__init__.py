import time
import schedule
from helpers.createRedis import Create
from config import Config

R_KEY = Config.KEY_UNIQ_CODE

r = Create(host=Config.REDIS_HOST_UNIQ_CODE,
           port=Config.REDIS_PORT_UNIQ_CODE, db=Config.REDIS_DB_UNIQ_CODE).instance()


def job():
    print('[Payment:Unicode] Doing Job...')

    dic = {}
    x_min = Config.MIN_UNIQ_CODE
    daily_tr = (Config.MAX_UNIQ_CODE - Config.MIN_UNIQ_CODE) + 1
    zrange_length = r.zcount(R_KEY, "-inf", "+inf")

    if zrange_length == 0:
        for x in range(daily_tr):
            dic[x_min] = x_min
            x_min += 1

        r.zadd(R_KEY, dic)

    print('[Payment:Unicode] Job Done!')


schedule.every().hour.do(job)

while True:
    schedule.run_pending()
    time.sleep(1)
