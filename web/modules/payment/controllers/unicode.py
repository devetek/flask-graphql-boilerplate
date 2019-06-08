from flask import jsonify
from config import Config
from flask_restful import Resource, reqparse
from helpers.createRedis import Create, R_KEY

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('my_code')


class UnicodeController(Resource):
    x_min = Config.MIN_UNIQ_CODE
    x_max = Config.MAX_UNIQ_CODE

    def __init__(self):
        self.redis = Create().instance()

    def get(self, **kwargs):
        my_code = 0
        status = 500
        rd_code = self.redis.zrange(R_KEY, 0, 0)

        if len(rd_code) > 0:
            my_code = int(rd_code[0].decode("utf-8"))
            rm_response = self.__remove(my_code)

            if rm_response != 1:
                self.__remove(my_code)

            status = 200
        else:
            dic = {}
            x_min = self.x_min
            daily_tr = (self.x_max - self.x_min) + 1

            for x in range(daily_tr):
                dic[x_min] = x_min
                x_min += 1

            self.redis.zadd(R_KEY, dic)

            rd_code = self.redis.zrange(R_KEY, 0, 0)
            my_code = int(rd_code[0].decode("utf-8"))
            rm_response = self.__remove(my_code)

            if rm_response != 1:
                self.__remove(my_code)

            status = 200

        return jsonify({
            "code": my_code,
            "message": self.__get_restore_code(status)
        })

    def put(self, **kwargs):
        my_code = 0
        status = 500

        if "my_code" in kwargs:
            my_code = kwargs['my_code']

        if my_code:
            zrange_length = self.redis.zcount(R_KEY, "-inf", "+inf")

            if my_code <= self.x_max and my_code >= self.x_min and zrange_length != 0:
                dic = {}
                bt_my_code = bytes(str(my_code), 'utf-8')
                rd_code = self.redis.zrange(R_KEY, 0, -1)
                high_code = self.redis.zrevrange(R_KEY, 0, 0, True)
                highest_code_weight = high_code[0][1]

                if bt_my_code not in rd_code:
                    dic[my_code] = highest_code_weight + 1

                    self.redis.zadd(R_KEY, dic)
                    status = 200

        return jsonify({
            "code": my_code if status == 200 else 0,
            "message": self.__get_restore_code(status)
        })

    """[User define function]
    
    Returns:
        [integer] -- [callback from redis delete]
    """

    def __get_restore_code(self, status_code):
        restore_code = {
            200: 'success',
            500: 'failed',
        }

        return restore_code.get(status_code, "Unexpected error")

    def __remove(self, my_code):
        rm_response = self.redis.zrem(R_KEY, my_code)

        return rm_response
