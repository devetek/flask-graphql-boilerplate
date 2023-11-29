from datetime import datetime

from web import db


class AccountEmail(db.Model):
    __tablename__ = 'account_email'

    email_id = db.Column(db.BigInteger, unique=True,
                         nullable=False, primary_key=True, index=True)
    email_text = db.Column(db.Text)
    email_primary = db.Column(
        db.Boolean, comment="Email primary or not", default=False)
    email_verified = db.Column(
        db.Boolean, comment="Email verified", default=False)
    email_member_id = db.Column(db.BigInteger,
                                db.ForeignKey('account_member.member_id'))
    email_create_date = db.Column(
        db.TIMESTAMP, default=db.func.now(), nullable=False)
    email_update_date = db.Column(
        db.TIMESTAMP, default=db.func.now(), onupdate=db.func.now(), nullable=False)

    def __repr__(self):
        return '<Email {}>'.format(self.email_id)

    def save(self):
        db.session.add(self)
        db.session.commit()

        return self.email_member_id

    def update(self):
        db.session.commit()

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    def to_dict(self):
        return {c.key: getattr(self, c.key)
                for c in db.inspect(self).mapper.column_attrs}
