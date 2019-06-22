from web import db
from flask_login import UserMixin
from datetime import datetime, timedelta


class User(db.Model):
    __tablename__ = 'user'

    user_id = db.Column(db.BigInteger, unique=True,
                        nullable=False, primary_key=True, index=True)
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
    aboutme = db.Column(db.Text)
    password = db.Column(db.VARCHAR(255))
    joindate = db.Column(db.DateTime, default=datetime.utcnow)
    status = db.Column(db.Integer)

    def __repr__(self):
        return '<User {}>'.format(self.username)

    def is_active(self):
        """True, as all users are active."""
        return True

    def get_id(self):
        """Return the user_id to satisfy Flask-Login's requirements."""
        return self.user_id

    def is_authenticated(self):
        """Return True if the user is authenticated."""
        return False if self.user_id is None else True

    def is_anonymous(self):
        """False, as anonymous users aren't supported."""
        return True if self.user_id is None else False
    
    def save_to_db(self):
        db.session.add(self)
        db.session.commit()
    
    @classmethod
    def find_by_username(cls, username):
        return cls.query.filter_by(username = username).first()

    def to_dict(self):
        data = {
            'user_id': self.user_id,
            'username': self.username,
            'fullname': self.fullname,
            'email': self.email,
            'place_of_birth': self.place_of_birth,
            'birthday': self.birthday,
            'address': self.address,
            'postal': self.postal,
            'district_id': self.district_id,
            'province_id': self.province_id,
            'country_id': self.country_id,
            'telp': self.telp,
            'phone': self.phone,
            'gender': self.gender,
            'religi': self.religi,
            'aboutme': self.aboutme,
            'password': self.password,
            'joindate': self.joindate,
            'status': self.status
        }

        return data
