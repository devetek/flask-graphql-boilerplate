from web import db
from flask_login import UserMixin
from datetime import datetime, timedelta


class User(UserMixin, db.Model):
    # as is the name of the model
    __tablename__ = 'user'

    user_id = db.Column(db.BigInteger, unique=True,
                        nullable=False, primary_key=True)
    username = db.Column(db.VARCHAR(255), index=True)
    fullname = db.Column(db.VARCHAR(255))
    place_of_birth = db.Column(db.Text)
    birthday = db.Column(db.DateTime)
    address = db.Column(db.Text)
    postal = db.Column(db.Integer)
    district_id = db.Column(db.Integer)
    province_id = db.Column(db.Integer)
    country_id = db.Column(db.Integer)
    telp = db.Column(db.VARCHAR(20))
    phone = db.Column(db.VARCHAR(20))
    email = db.Column(db.VARCHAR(50))
    gender = db.Column(db.VARCHAR(1))
    religi = db.Column(db.VARCHAR(10))
    religi = db.Column(db.VARCHAR(10))
    aboutme = db.Column(db.Text)
    password = db.Column(db.VARCHAR(255))
    joindate = db.Column(db.DateTime, default=datetime.utcnow)
    status = db.Column(db.Integer)

    def __repr__(self):
        return '<User {}>'.format(self.username)

    def to_dict(self):
        data = {
            'user_id': self.user_id,
            'username': self.username,
            'fullname': self.fullname,
            'email': self.email,
            'place_of_birth': self.place_of_birth,
            'birthday': self.birthday,
        }

        return data
