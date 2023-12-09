from ariadne import (QueryType, load_schema_from_path, make_executable_schema,
                     snake_case_fallback_resolvers)

# Registered Resolver
from gqlserver.resolvers.account.get_account_by_id import \
    resolve_get_account_by_id
from gqlserver.resolvers.hello import resolve_hello
from gqlserver.resolvers.user import resolve_user

query = QueryType()
query.set_field("hello", resolve_hello)
query.set_field("user", resolve_user)
query.set_field("account", resolve_get_account_by_id)


type_defs = load_schema_from_path("gqlserver/schema")
schema = make_executable_schema(type_defs, query,
                                snake_case_fallback_resolvers)