from flask_restful import Resource
from web.modules.member import api
from web.modules.member.controllers import MainController, LoginController, \
    DetailController, MeController, LogoutController


"""[define routing under module member]
"""
api.add_resource(MainController, '', '/')
api.add_resource(LoginController, '/login')
api.add_resource(DetailController, '/get')
api.add_resource(MeController, '/me')
api.add_resource(LogoutController, '/logout')
