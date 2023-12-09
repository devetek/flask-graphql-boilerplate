from ariadne import ObjectType

from shared.models.account.email import AccountEmail
from shared.models.account.member import (AccountMember,
                                          member_return_data_serializer)
from shared.models.account.phone import AccountPhone


# _ is an object any
# info is a graphql context include request context
#  rest can be use **args, as dict or you can directly define based on query format. such as: id, name, ...
# detail about resolver, can be found https://ariadnegraphql.org/docs/resolvers
def resolve_get_account_by_id(_, info, id):
    member_data = AccountMember.query.filter_by(
            member_id=id).first()
    
    response = member_data.to_dict()

    return member_return_data_serializer(response)
