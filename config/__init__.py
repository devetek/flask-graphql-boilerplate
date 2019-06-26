import os
import json
import redis
from dotenv import load_dotenv

load_dotenv(verbose=True)


class Config(object):
    # App Common Configuration
    APP_NAME = os.getenv('APP_NAME')
    TESTING = os.getenv('TESTING')
    FLASK_ENV = os.getenv('FLASK_ENV')
    SECRET_KEY = os.getenv('SECRET_KEY')
    APPLICATION_ROOT = os.getenv('APPLICATION_ROOT') or '/'

    # SQL-Alchemy Environment
    SQLALCHEMY_CONNECTION = os.getenv('SQLALCHEMY_CONNECTION')
    SQLALCHEMY_DATABASE_URI = os.getenv('SQLALCHEMY_DATABASE_URI')
    SQLALCHEMY_BINDS = json.loads(os.getenv('SQLALCHEMY_BINDS'))
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

    # Flask-JWT Single Authentication
    JWT_SECRET_KEY = os.getenv('JWT_SECRET_KEY')
    JWT_TOKEN_LOCATION = ['headers', 'cookies', 'query_string', 'json']
    JWT_ACCESS_TOKEN_EXPIRES = int(
        os.getenv('JWT_ACCESS_TOKEN_EXPIRES'))  # 1 day
    JWT_REFRESH_TOKEN_EXPIRES = int(os.getenv(
        'JWT_REFRESH_TOKEN_EXPIRES'))  # 1 week

    # Unicode Environment
    REDIS_HOST_UNIQ_CODE = os.getenv('REDIS_HOST_UNIQ_CODE')
    REDIS_PORT_UNIQ_CODE = int(os.getenv('REDIS_PORT_UNIQ_CODE'))
    REDIS_DB_UNIQ_CODE = int(os.getenv('REDIS_DB_UNIQ_CODE'))
    KEY_UNIQ_CODE = os.getenv('KEY_UNIQ_CODE')
    MIN_UNIQ_CODE = int(os.getenv('MIN_UNIQ_CODE'))
    MAX_UNIQ_CODE = int(os.getenv('MAX_UNIQ_CODE'))

    # GLOBAL ERROR CODE
    ERROR_CODE_MESSAGE = {
        "exit_code": {
            1: "Exit code 1",
            2: "Exit code 2",
        },
        "http_status": {
            400: "The API request is invalid or improperly formed. Consequently, the API server could not understand the request.",
            401: "The user is not authorized to make the request.",
            404: "The requested operation failed because a resource associated with the request could not be found.",
            405: "The HTTP method associated with the request is not supported.",
            500: "The request failed due to an internal error.",
        }
    }
