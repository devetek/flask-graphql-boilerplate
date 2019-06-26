from web import db
from datetime import datetime
from sqlalchemy import inspect, text
from sqlalchemy.dialects.mysql import INTEGER, BIGINT, TIMESTAMP


class AccountEmail(db.Model):
    __tablename__ = 'account_email'

    email_id = db.Column(BIGINT(unsigned=True), unique=True,
                         nullable=False, primary_key=True, index=True)
    email_text = db.Column(db.Text)
    email_primary = db.Column(
        db.Boolean, comment="Email primary or not", default=False)
    email_verified = db.Column(
        db.Boolean, comment="Email verified", default=False)
    email_member_id = db.Column(BIGINT(unsigned=True),
                                db.ForeignKey('account_member.member_id'))
    email_create_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP'), nullable=False)
    email_update_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'), nullable=False)

    def __repr__(self):
        return '<Email {}>'.format(self.email_id)

    def to_dict(self):
        return {c.key: getattr(self, c.key)
                for c in inspect(self).mapper.column_attrs}
