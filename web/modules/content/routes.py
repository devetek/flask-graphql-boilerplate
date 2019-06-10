from flask_restful import Resource, url_for
from web.modules.content import bp, api
from web.modules.content.controllers import MainController, DetailController


"""[define routing under module content]
"""
api.add_resource(MainController, '', '/')
api.add_resource(DetailController, '/id/<int:content_id>')
