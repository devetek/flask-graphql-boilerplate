from config import Config
from helpers.createRedis import Create

R_KEY = Config.KEY_UNIQ_CODE
MIN_UNIQ_CODE = Config.MIN_UNIQ_CODE
MAX_UNIQ_CODE = Config.MAX_UNIQ_CODE
storage = Create(host=Config.REDIS_HOST_UNIQ_CODE,
                 port=Config.REDIS_PORT_UNIQ_CODE, db=Config.REDIS_DB_UNIQ_CODE).instance()
