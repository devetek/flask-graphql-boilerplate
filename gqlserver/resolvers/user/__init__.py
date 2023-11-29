def resolve_user(_, info):
    request = info.context
    user_agent = request.headers.get("User-Agent", "Guest")

    return "User, %s!" % user_agent
