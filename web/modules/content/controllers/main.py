from flask import jsonify
from flask_restful import Resource, reqparse
from models.content import Content
from web.helpers import pagination

"""[define your parameters here, strict for security issue]
"""
parser = reqparse.RequestParser()
parser.add_argument('page', type=int)
parser.add_argument('size', type=int)


class MainController(Resource):
    def get(self, offset=0, limit=10):
        content_data = []
        args = parser.parse_args(req=None, strict=False)
        paginate = pagination(**args)
        content_list = Content.query.offset(
            paginate['offset']).limit(paginate['limit'])

        if content_list != None:
            [content_data.append(content.to_dict())
             for content in content_list]

        return jsonify(content_data)
