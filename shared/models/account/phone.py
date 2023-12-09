from datetime import datetime

from shared.models import db


class AccountPhone(db.Model):
    __tablename__ = 'account_phone'

    phone_id = db.Column(db.BigInteger, unique=True,
                         nullable=False, primary_key=True, index=True)
    phone_text = db.Column(db.Text)
    phone_primary = db.Column(
        db.Boolean, comment="Phone primary or not", default=False)
    phone_verified = db.Column(
        db.Boolean, comment="Phone verified", default=False)
    phone_member_id = db.Column(db.BigInteger,
                                db.ForeignKey('account_member.member_id'))
    phone_create_date = db.Column(
        db.TIMESTAMP, default=db.func.now(), nullable=False)
    phone_update_date = db.Column(
        db.TIMESTAMP, default=db.func.now(), onupdate=db.func.now(), nullable=False)

    def __repr__(self):
        return '<Phone {}>'.format(self.phone_id)

    def save(self):
        db.session.add(self)
        db.session.commit()

        return self.phone_member_id

    def update(self):
        db.session.commit()

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    def to_dict(self):
        return {c.key: getattr(self, c.key)
                for c in db.inspect(self).mapper.column_attrs}
