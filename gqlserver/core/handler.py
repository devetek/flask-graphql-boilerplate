from ariadne import graphql_sync
from ariadne.explorer import ExplorerGraphiQL
from flask import jsonify, request

from gqlserver.core import bp, schema

# gql explorer
explorer_html = ExplorerGraphiQL().html(None)

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
