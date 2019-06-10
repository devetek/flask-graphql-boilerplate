from config import Config
from flask_restful import abort


def error_400(opts={}):
    default_opt = {
        "message": Config.ERROR_CODE_MESSAGE['http_status'][400],
        "status": 400,
    }

    default_opt.update(opts)

    return abort(400, **default_opt)


def error_401(opts={}):
    default_opt = {
        "message": Config.ERROR_CODE_MESSAGE['http_status'][401],
        "status": 401,
    }

    default_opt.update(opts)

    return abort(401, **default_opt)


def error_404(opts={}):
    default_opt = {
        "message": Config.ERROR_CODE_MESSAGE['http_status'][404],
        "status": 404,
    }

    default_opt.update(opts)

    return abort(404, **default_opt)


def error_405(opts={}):
    default_opt = {
        "message": Config.ERROR_CODE_MESSAGE['http_status'][405],
        "status": 405,
    }

    default_opt.update(opts)

    return abort(405, **default_opt)


def error_500(opts={}):
    default_opt = {
        "message": Config.ERROR_CODE_MESSAGE['http_status'][500],
        "status": 500,
    }

    default_opt.update(opts)

    return abort(500, **default_opt)
