import sys

from cli.init.db import member_seed
from gqlserver import bootstrap_app
from shared.models import db

app = bootstrap_app()

@app.cli.command()
def initdb():
    try:
        from shared.models.account.email import AccountEmail
        from shared.models.account.member import (AccountMember,
                                                  member_data_input_serializer)
        from shared.models.account.phone import AccountPhone

        # Init Model
        db.create_all()

        user = AccountMember.query.filter_by(
            member_id=member_seed["member_id"]).first()

        # Check user exist or not
        if user is None:
            # Register initial member
            member_id = AccountMember(
                **member_data_input_serializer(member_seed)).save()

            # Save Email
            AccountEmail(
                email_text=member_seed["member_email"][0]['email_text'],
                email_primary=member_seed["member_email"][0]['email_primary'],
                email_verified=member_seed["member_email"][0]['email_verified'],
                email_member_id=member_id,
            ).save()

            # Save Phone
            AccountPhone(
                phone_text=member_seed["member_phone"][0]['phone_text'],
                phone_primary=member_seed["member_phone"][0]['phone_primary'],
                phone_verified=member_seed["member_phone"][0]['phone_verified'],
                phone_member_id=member_id
            ).save()



    except Exception as error:
        print(error)