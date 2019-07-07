import sys
from config import Config
from web import db, bootstrap_web
from cli.db import init_account, init_member
app = bootstrap_web(Config)


@app.cli.command()
def initdb():
    from models.account.member import AccountMember, member_data_input_serializer
    from models.account.client import AccountClient
    from models.account.members_client import AccountMembersClient

    try:
        engine = db.create_engine(Config.SQLALCHEMY_CONNECTION, {})
        engine.execute("CREATE DATABASE IF NOT EXISTS devetek_account")
        engine.execute("CREATE DATABASE IF NOT EXISTS devetek_session")
    except:
        pass

    db.create_all()

    # Register initial app to account
    client_id = AccountClient(**init_account).save()
    # Register initial member
    member = AccountMember(**member_data_input_serializer(init_member)).save()

    # Save Member with client
    AccountMembersClient(mc_client_id=client_id,
                         mc_member_id=member, mc_is_approved=3).save()


@app.cli.command()
def migrate():
    print("Triggered!")
