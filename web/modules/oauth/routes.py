from flask_restful import Resource
from web.modules.oauth import api
from web.modules.oauth.controllers import AuthorizationController, RefreshController, PrivateController, LogoutController


"""[define routing under module payment]
"""
api.add_resource(AuthorizationController, '', '/authorization')
api.add_resource(RefreshController, '', '/refresh')
api.add_resource(PrivateController, '', '/private')
api.add_resource(LogoutController, '', '/logout')
