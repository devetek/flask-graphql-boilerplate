import sys

from cli.init.db import init_account, init_member
from models import db
from web import bootstrap_http

app = bootstrap_http()


@app.cli.command()
def initdb():
    try:
        from models.account.member import AccountMember, member_data_input_serializer
        from models.account.email import AccountEmail
        from models.account.phone import AccountPhone
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
            member_id = AccountMember(
                **member_data_input_serializer(init_member)).save()

            # Save Email
            AccountEmail(
                email_text=init_member["member_email"][0]['email_text'],
                email_primary=init_member["member_email"][0]['email_primary'],
                email_verified=init_member["member_email"][0]['email_verified'],
                email_member_id=member_id,
            ).save()

            # Save Phone
            AccountPhone(
                phone_text=init_member["member_phone"][0]['phone_text'],
                phone_primary=init_member["member_phone"][0]['phone_primary'],
                phone_verified=init_member["member_phone"][0]['phone_verified'],
                phone_member_id=member_id
            ).save()

            # Save Member with client
            AccountMembersClient(mc_client_id=client_id,
                                 mc_member_id=member_id, mc_is_approved=3).save()
    except Exception as error:
        print(error)


@app.cli.command()
def migrate():
    print("Underconstructor")
