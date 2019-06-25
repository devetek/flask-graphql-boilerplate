from web import db
from datetime import datetime
from sqlalchemy import inspect, text
from sqlalchemy.dialects.mysql import BIGINT, TIMESTAMP


class AccountPhone(db.Model):
    __tablename__ = 'account_phone'

    phone_id = db.Column(BIGINT(unsigned=True), unique=True,
                         nullable=False, primary_key=True, index=True)
    phone_text = db.Column(db.Text)
    phone_status = db.Column(db.Boolean, comment="Phone primary or not")
    phone_member_id = db.Column(BIGINT(unsigned=True),
                                db.ForeignKey('account_member.member_id'))
    phone_create_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP'), nullable=False)
    phone_update_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'), nullable=False)

    def to_dict(self):
        return {c.key: getattr(self, c.key)
                for c in inspect(self).mapper.column_attrs}
