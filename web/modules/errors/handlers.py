from web.helpers.error_handler import error_http_code
from web.modules.errors import bp


@bp.app_errorhandler(404)
def not_found_error(error):
    return error_http_code(404, {}, True)


@bp.app_errorhandler(500)
def internal_error(error):
    return error_http_code(500, {}, True)
