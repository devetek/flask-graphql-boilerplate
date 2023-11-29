from ariadne import (QueryType, graphql_sync, load_schema_from_path,
                     make_executable_schema, snake_case_fallback_resolvers)
from ariadne.explorer import ExplorerGraphiQL
from flask import Blueprint, jsonify, request

# Registered Resolver
from gqlserver.resolvers.hello import resolve_hello
from gqlserver.resolvers.user import resolve_user

"""[Load initial object requirement to setup graphql server engine]
Init blueprint flask modular controller
Init aridne schema loader
"""
bp = Blueprint('graphql', __name__)

query = QueryType()
query.set_field("hello", resolve_hello)
query.set_field("user", resolve_user)

# gql explorer
explorer_html = ExplorerGraphiQL().html(None)

type_defs = load_schema_from_path("gqlserver/schema")
schema = make_executable_schema(type_defs, query,
                                snake_case_fallback_resolvers)


@bp.route("/", methods=["GET"])
def graphql_playground():
    return explorer_html, 200


@bp.route("/", methods=["POST"])
def graphql_server():
    data = request.get_json()

    success, result = graphql_sync(schema,
                                   data,
                                   context_value=request,
                                   debug=True)

    status_code = 200 if success else 400
    return jsonify(result), status_code
