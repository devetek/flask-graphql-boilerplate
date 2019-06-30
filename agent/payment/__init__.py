import time
import schedule
from libraries.devetek.payment.unicode_identifier import R_KEY, storage as r, MIN_UNIQ_CODE, MAX_UNIQ_CODE


def job():
    print('[Payment:Unicode] Doing Job...')

    dic = {}
    x_min = MIN_UNIQ_CODE
    daily_tr = (MAX_UNIQ_CODE - MIN_UNIQ_CODE) + 1
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
