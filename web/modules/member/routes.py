from flask_restful import Resource, url_for
from web.modules.member import bp, api
from web.modules.member.controllers import main, detail


"""[define routing under module member]
"""
api.add_resource(main.Main, '', '/')
api.add_resource(detail.Detail, '/id/<int:user_id>')
