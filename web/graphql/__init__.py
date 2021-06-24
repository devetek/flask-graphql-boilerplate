from ariadne import (QueryType, graphql_sync, load_schema_from_path,
                     make_executable_schema, snake_case_fallback_resolvers)
from ariadne.constants import PLAYGROUND_HTML
from flask import Blueprint, jsonify, request

# Registered Resolver
from .resolvers.hello import resolve_hello

"""[Load initial object requirement to setup graphql server engine]
Init blueprint flask modular controller
Init aridne schema loader
"""
bp = Blueprint('graphql', __name__)

query = QueryType()
query.set_field("hello", resolve_hello)

type_defs = load_schema_from_path("web/graphql/schema")
schema = make_executable_schema(type_defs, query,
                                snake_case_fallback_resolvers)


@bp.route("/playground", methods=["GET"])
def graphql_playground():
    return PLAYGROUND_HTML, 200


@bp.route("/", methods=["POST"])
def graphql_server():
    data = request.get_json()

    success, result = graphql_sync(schema,
                                   data,
                                   context_value=request,
                                   debug=True)

    status_code = 200 if success else 400
    return jsonify(result), status_code
