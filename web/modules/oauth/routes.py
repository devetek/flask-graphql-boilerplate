from flask_restful import Resource
from web.modules.oauth import api
from web.modules.oauth.controllers import RegistrationController


"""[define routing under module payment]
"""
api.add_resource(RegistrationController, '', '/registration')