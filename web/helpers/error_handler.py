from config import Config
from flask import jsonify
from flask_restful import abort


"""[Function helper for generate JSON response on error HTTP STATUS CODE or non 200]

Returns:
    [void] -- [when `@for_common` is disable will default response http body]
    [dictionary] -- [when `@for_common` is enable will return dict of default error data combine with custom error from user defined]
"""


def error_http_code(code=404, opts={}, for_common=False):
    default_opt = {
        "message": Config.ERROR_CODE_MESSAGE['http_status'][code],
        "status": code,
        "success": False
    }

    default_opt.update(opts)

    if for_common:
        return jsonify(default_opt)

    return abort(code, **default_opt)
