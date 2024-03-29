from ariadne import graphql_sync
from ariadne.explorer import ExplorerGraphiQL
from flask import Blueprint, jsonify, request

from .graphql import schema

"""[Load initial object requirement to setup graphql server engine]
Init blueprint flask modular controller
Init aridne schema loader
"""
bp = Blueprint('graphql', __name__)


@bp.route("/", methods=["GET"])
def graphql_playground():
    return ExplorerGraphiQL().html(None), 200


@bp.route("/", methods=["POST"])
def graphql_server():
    data = request.get_json()

    success, result = graphql_sync(schema,
                                   data,
                                   context_value=request,
                                   debug=True)

    status_code = 200 if success else 400
    return jsonify(result), status_code
