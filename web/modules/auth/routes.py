from flask_restful import Resource

from web.modules.auth import api
from web.modules.auth.controllers import (AuthorizationController,
                                           IsAuthenticatedController,
                                           LogoutController, RefreshController,
                                           RegistrationController)

"""[define routing under module payment]
"""
api.add_resource(RegistrationController, '/registration')
api.add_resource(AuthorizationController, '/authorization')
api.add_resource(RefreshController, '/refresh')
api.add_resource(IsAuthenticatedController, '/isauthenticated')
api.add_resource(LogoutController, '/logout')
