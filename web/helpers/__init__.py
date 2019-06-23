def pagination(page=1, size=5):
    limit = 5 if size is None or size > 20 else size
    offset = 0 if page is None or page < 1 else (page*limit) - limit

    return {"offset": offset, "limit": limit}


def success_http_response(message="Success!", status=True, data=None):
    return {
        "success": status,
        "message": message,
        "data": data
    }
