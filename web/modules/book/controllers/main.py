from flask import jsonify
from flask_restful import Resource
from models.content import Content


class Main(Resource):
    def get(self, offset=0, limit=10):
        content_data = []
        content_list = Content.query[offset:limit]

        if content_list != None:
            [content_data.append(content.to_dict())
             for content in content_list]

        return jsonify(content_data)
