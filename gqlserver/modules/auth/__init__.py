from flask import Blueprint
from flask_restful import Api, Resource
from web.modules.auth.controllers import (AuthorizationController,
                                          IsAuthenticatedController,
                                          LogoutController, RefreshController,
                                          RegistrationController)

bp = Blueprint('oauth', __name__)
api = Api(bp)

"""[define routing under oauth module]
"""
api.add_resource(RegistrationController, '/registration')
api.add_resource(AuthorizationController, '/authorization')
api.add_resource(RefreshController, '/refresh')
api.add_resource(IsAuthenticatedController, '/isauthenticated')
api.add_resource(LogoutController, '/logout')
