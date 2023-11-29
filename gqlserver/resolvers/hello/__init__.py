def resolve_hello(_, info):
    request = info.context
    user_agent = request.headers.get("User-Agent", "Guest")

    return "Hello, %s!" % user_agent
