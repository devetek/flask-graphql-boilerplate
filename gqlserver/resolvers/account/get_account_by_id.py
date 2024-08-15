from ariadne import ObjectType


# _ is an object any
# info is a graphql context include request context
#  rest can be use **args, as dict or you can directly define based on query format. such as: id, name, ...
# detail about resolver, can be found https://ariadnegraphql.org/docs/resolvers
def resolve_get_account_by_id(_, info, id):
        data = {
                "member_username": "prakasa1904",
                "member_fullname": "Nedya Amrih Prakasa",
                "member_status": 1,
                "member_email": [
                        {
                                    "email_text":"prakasa@devetek.com",
                                    "email_primary": True,
                                    "email_verified": True
                        }
                ]
        }
    
        return data
