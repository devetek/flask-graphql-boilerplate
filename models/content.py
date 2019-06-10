from web import db
from flask_login import UserMixin
from datetime import datetime, timedelta


class Content(db.Model):
    __bind_key__ = 'content'
    __tablename__ = 'content'

    content_id = db.Column(db.BigInteger, unique=True,
                           nullable=False, primary_key=True, index=True)
    content_name = db.Column(db.Text)

    def __repr__(self):
        return '<Content {}>'.format(self.content_id)

    def to_dict(self):
        data = {
            'content_id': self.content_id,
            'content_name': self.content_name
        }

        return data
