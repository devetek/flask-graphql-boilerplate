from flask_restful import Resource

from . import api
from .controllers import *

"""[define routing under module account]
"""
api.add_resource(RegisterClientController, '/client/register')
api.add_resource(ClientDetailController, '/client/<int:client_id>')

api.add_resource(AddMemberController, '/add')
api.add_resource(UpdateMemberController, '/update/<int:member_id>')
api.add_resource(MemberDetailController, '/<int:member_id>')
api.add_resource(MemberMeController, '/me')
