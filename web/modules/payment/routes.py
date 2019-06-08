from flask_restful import Resource
from web.modules.payment import api
from web.modules.payment.controllers import MainController, UnicodeController


"""[define routing under module payment]
"""
api.add_resource(MainController, '', '/')
api.add_resource(UnicodeController, '/unicode',
                 '/unicode/', '/unicode/<int:my_code>')
