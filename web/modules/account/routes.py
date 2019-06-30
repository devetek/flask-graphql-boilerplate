from flask_restful import Resource
from web.modules.account import api
from web.modules.account.controllers import RegisterClientController, \
    ClientDetailController, AddMemberController, \
    UpdateMemberController, MemberDetailController, \
    MemberMeController


"""[define routing under module account]
"""
api.add_resource(RegisterClientController, '/client/register')
api.add_resource(ClientDetailController, '/client/<int:client_id>')

api.add_resource(AddMemberController, '/add')
api.add_resource(UpdateMemberController, '/update/<int:member_id>')
api.add_resource(MemberDetailController, '/<int:member_id>')
api.add_resource(MemberMeController, '/me')
