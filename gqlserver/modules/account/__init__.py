from flask import Blueprint
from flask_restful import Api, Resource

from .controllers import *

bp = Blueprint('account', __name__)
api = Api(bp)

"""[define routing under account module]
"""
api.add_resource(RegisterClientController, '/client/register')
api.add_resource(ClientDetailController, '/client/<int:client_id>')

api.add_resource(AddMemberController, '/add')
api.add_resource(UpdateMemberController, '/update/<int:member_id>')
api.add_resource(MemberDetailController, '/<int:member_id>')
api.add_resource(MemberMeController, '/me')
