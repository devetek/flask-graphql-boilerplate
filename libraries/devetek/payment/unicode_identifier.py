from helpers.createRedis import Create

R_KEY = "purchase:uniqcode"
MIN_UNIQ_CODE = 50
MAX_UNIQ_CODE = 300
storage = Create(host="localhost", port=6379, db=0).instance()
