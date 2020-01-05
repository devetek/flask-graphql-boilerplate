from sqlalchemy.dialects.mysql import BIGINT, INTEGER, TINYINT

from models.account.client import AccountClient
from models.account.member import AccountMember
from web import db


class AccountMembersClient(db.Model):
    __tablename__ = 'members_client'

    mc_client_id = db.Column(INTEGER(unsigned=True),
                             db.ForeignKey('account_client.client_id'), primary_key=True)
    mc_member_id = db.Column(BIGINT(unsigned=True),
                             db.ForeignKey('account_member.member_id'), primary_key=True)
    mc_is_approved = db.Column(
        TINYINT(unsigned=True), default=2, comment="active(3), pending(2), blocked(1)")
    account_member = db.relationship(
        AccountMember, backref=db.backref("member_assoc"))
    account_client = db.relationship(
        AccountClient, backref=db.backref("client_assoc"))

    def save(self):
        db.session.add(self)

        return self.commit()

    def commit(self):
        db.session.commit()

        return self.mc_member_id
