import sys

from cli.db import init_account, init_member
from config import Config
from web import bootstrap_web, db

app = bootstrap_web(Config)


@app.cli.command()
def initdb():
    from models.account.member import AccountMember, member_data_input_serializer
    from models.account.client import AccountClient
    from models.account.members_client import AccountMembersClient

    # Init Model
    db.create_all()

    client = AccountClient.query.filter_by(
        client_code=init_account["client_code"]).first()

    # Check client exist or not
    if client is None:
        # Register initial app to account
        client_id = AccountClient(**init_account).save()

        # Register initial member
        member = AccountMember(
            **member_data_input_serializer(init_member)).save()

        # Save Member with client
        AccountMembersClient(mc_client_id=client_id,
                             mc_member_id=member, mc_is_approved=3).save()


@app.cli.command()
def migrate():
    print("Underconstructor")
