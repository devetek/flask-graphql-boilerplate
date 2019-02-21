from flask_restful import Resource, url_for
from web.modules.book import bp, api
from web.modules.book.controllers import main, detail


"""[define routing under module book]
"""
api.add_resource(main.Main, '', '/')
api.add_resource(detail.Detail, '/id/<book_id>')
