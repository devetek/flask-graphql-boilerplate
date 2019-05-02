import os
from dotenv import load_dotenv

basedir = os.path.abspath(os.path.dirname(__file__))
load_dotenv(os.path.join(basedir, '.env'))


class Config(object):
    APP_NAME = os.environ.get('APP_NAME') or 'Devetek Backend'
    TESTING = os.environ.get('TESTING') or True
    FLASK_ENV = os.environ.get('FLASK_ENV') or 'development'
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-guess'

    # SQL-Alchemy Environment
    SQLALCHEMY_DATABASE_URI = os.environ.get('DATABASE_URL')
    SQLALCHEMY_TRACK_MODIFICATIONS = os.environ.get(
        'SQLALCHEMY_TRACK_MODIFICATIONS')
    POSTS_PER_PAGE = 10

    # Flask-Session Environment
    SESSION_TYPE = "redis"
    SESSION_REDIS_HOST = "localhost"
    SESSION_REDIS_PORT = 6379

    # Flask-Login Environment
    AUTH_HEADER_NAME = "Devetek-Authorization"
    SESSION_PROTECTION = "strong"

    def get_app_env(self):
        return self.FLASK_ENV

    def get_app_name(self):
        return self.APP_NAME
