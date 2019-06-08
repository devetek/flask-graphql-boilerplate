import os
import redis
from dotenv import load_dotenv

load_dotenv(verbose=True)


class Config(object):
    # App Common Configuration
    APP_NAME = os.getenv('APP_NAME')
    TESTING = os.getenv('TESTING')
    FLASK_ENV = os.getenv('FLASK_ENV')
    SECRET_KEY = os.getenv('SECRET_KEY')

    # SQL-Alchemy Environment
    SQLALCHEMY_DATABASE_URI = os.getenv('SQLALCHEMY_DATABASE_URI')
    SQLALCHEMY_TRACK_MODIFICATIONS = os.getenv(
        'SQLALCHEMY_TRACK_MODIFICATIONS')

    # Flask-Session Environment
    SESSION_TYPE = os.getenv('SESSION_TYPE')
    SESSION_REDIS = redis.from_url(os.getenv('SESSION_REDIS'))
    SESSION_COOKIE_NAME = os.getenv('SESSION_COOKIE_NAME')
    SESSION_KEY_PREFIX = os.getenv('SESSION_KEY_PREFIX')
    PERMANENT_SESSION_LIFETIME = int(os.getenv('PERMANENT_SESSION_LIFETIME'))
    SESSION_COOKIE_SECURE = os.getenv('SESSION_COOKIE_SECURE')

    # Flask-Login Environment
    AUTH_HEADER_NAME = os.getenv('AUTH_HEADER_NAME')
    SESSION_PROTECTION = os.getenv('SESSION_PROTECTION')

    # Unicode Environment
    REDIS_HOST_UNIQ_CODE = os.getenv('REDIS_HOST_UNIQ_CODE')
    REDIS_PORT_UNIQ_CODE = int(os.getenv('REDIS_PORT_UNIQ_CODE'))
    REDIS_DB_UNIQ_CODE = int(os.getenv('REDIS_DB_UNIQ_CODE'))
    KEY_UNIQ_CODE = os.getenv('KEY_UNIQ_CODE')
    MIN_UNIQ_CODE = int(os.getenv('MIN_UNIQ_CODE'))
    MAX_UNIQ_CODE = int(os.getenv('MAX_UNIQ_CODE'))
