from ariadne import (QueryType, load_schema_from_path, make_executable_schema,
                     snake_case_fallback_resolvers)

# Resolvers
from gqlserver.resolvers.account.get_account_by_id import \
    resolve_get_account_by_id
from gqlserver.resolvers.hello import resolve_hello

query = QueryType()
query.set_field("hello", resolve_hello)
query.set_field("account", resolve_get_account_by_id)


type_defs = load_schema_from_path("gqlserver/schema")
schema = make_executable_schema(type_defs, query,
                                snake_case_fallback_resolvers)