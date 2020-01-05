"""[Object to generate global static config]
"""


class config(object):
    # Session Prefix
    TOKEN_PREFIX = "jwt:token:revoked:devetek:"

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
