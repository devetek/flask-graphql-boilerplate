import os
import redis


class Config(object):
    APP_NAME = os.getenv('APP_NAME') or 'Devetek Backend'
    TESTING = os.getenv('TESTING') or True
    FLASK_ENV = os.getenv('FLASK_ENV') or 'development'
    SECRET_KEY = os.getenv('SECRET_KEY') or 'you-will-never-guess'

    # SQL-Alchemy Environment
    SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL')
    SQLALCHEMY_TRACK_MODIFICATIONS = os.getenv(
        'SQLALCHEMY_TRACK_MODIFICATIONS')
    POSTS_PER_PAGE = 10

    # Flask-Session Environment
    SESSION_TYPE = os.getenv('SESSION_TYPE') or 'null'
    SESSION_REDIS = redis.from_url('redis://45.77.32.75:6379')
    SESSION_COOKIE_NAME = os.getenv('SESSION_COOKIE_NAME')
    SESSION_KEY_PREFIX = os.getenv('SESSION_KEY_PREFIX')
    PERMANENT_SESSION_LIFETIME = 86400
    SESSION_COOKIE_SECURE = False if os.getenv(
        'FLASK_ENV') == "development" else True

    # Flask-Login Environment
    AUTH_HEADER_NAME = "Devetek-Authorization"
    SESSION_PROTECTION = "strong"

    def get_app_env(self):
        return self.FLASK_ENV

    def get_app_name(self):
        return self.APP_NAME
