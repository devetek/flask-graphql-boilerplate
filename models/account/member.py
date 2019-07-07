"""
[documentation]
    - member_status:
        Status member for account app, no related with registered app in devetek account.
        1. staff(3): full access for account dashboard app
        2. member(2): limited access for account dashboard app
        3. guest(1): no access for account dashboard app
    - is_approved:
        Status member for registered apps in devetek account.
        1. actived(3): member status actived in selected app, for example Hompes, Terpusat, Edutech
        2. pending(2): member status pending, waiting approval from app admin, for example Hompes admin 
        3. blocked(1): member status blocked, can be permanent or temporary block, need some reason and resolution
[references]
    https://stackoverflow.com/questions/16433338/inserting-new-records-with-one-to-many-relationship-in-sqlalchemy
    https://stackoverflow.com/questions/25668092/flask-sqlalchemy-many-to-many-insert-data
    https://www.youtube.com/watch?v=OvhoYbjtiKc
"""


from web import db
from datetime import datetime
from sqlalchemy import inspect, text, func
from sqlalchemy.dialects.mysql import TINYINT, INTEGER, BIGINT, TIMESTAMP
from models.account.client import AccountClient
from models.account.email import AccountEmail
from models.account.phone import AccountPhone
from libraries.hash import generate_hash256, verify_hash256


def member_data_input_serializer(data):
    return {
        "member_username": data['member_username'] if "member_username" in data else "",
        "member_fullname": data['member_fullname'] if "member_fullname" in data else "",
        "member_gender": data['member_gender'] if "member_gender" in data else "",
        "member_place_of_birth": data['member_place_of_birth'] if "member_place_of_birth" in data else "",
        "member_birth_of_date": data['member_birth_of_date'] if "member_birth_of_date" in data else datetime.today().strftime('%Y-%m-%d'),
        "member_religion": data['member_religion'] if "member_religion" in data else "",
        "member_password": generate_hash256(data['member_password']) if "member_password" in data else generate_hash256("123456"),
        "member_aboutme": data['member_aboutme'] if "member_aboutme" in data else "",
        "member_status": data['member_status'] if "member_status" in data else 0,
        "member_create_date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "member_update_date": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    }


def member_return_data_serializer(data):
    return {
        "member_username": data['member_username'] if "member_username" in data else "",
        "member_fullname": data['member_fullname'] if "member_fullname" in data else "",
        "member_gender": data['member_gender'] if "member_gender" in data else "",
        "member_place_of_birth": data['member_place_of_birth'] if "member_place_of_birth" in data else "",
        "member_birth_of_date": data['member_birth_of_date'] if "member_birth_of_date" in data else datetime.today().strftime('%Y-%m-%d'),
        "member_religion": data['member_religion'] if "member_religion" in data else "",
        "member_aboutme": data['member_aboutme'] if "member_aboutme" in data else "",
        "member_status": data['member_status'] if "member_status" in data else 0,
        "member_email": data["member_email"] if "member_email" in data else [],
        "member_phone": data["member_phone"] if "member_phone" in data else [],
    }


class AccountMember(db.Model):
    __tablename__ = 'account_member'

    member_id = db.Column(BIGINT(unsigned=True),
                          nullable=False, primary_key=True, index=True)
    member_username = db.Column(db.VARCHAR(255), index=True)
    member_fullname = db.Column(db.VARCHAR(255))
    member_gender = db.Column(db.VARCHAR(1))
    member_place_of_birth = db.Column(db.VARCHAR(100))
    member_birth_of_date = db.Column(db.DateTime, default=func.now())
    member_religion = db.Column(db.VARCHAR(10))
    member_password = db.Column(db.VARCHAR(255))
    member_aboutme = db.Column(db.Text)
    member_status = db.Column(
        db.SmallInteger, comment="staff(3), member(2), guest(1)")
    member_email = db.relationship("AccountEmail")
    member_phone = db.relationship("AccountPhone")
    member_apps_ids = db.relationship(
        AccountClient, secondary='members_client')
    member_create_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP'), nullable=False)
    member_update_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'), nullable=False)

    def __repr__(self):
        return '<Member {}>'.format(self.member_id)

    def is_active(self):
        """True, as all users are active."""
        return True

    def get_id(self):
        """Return the member_id to satisfy Flask-Login's requirements."""
        return self.member_id

    def is_authenticated(self):
        """Return True if the user is authenticated."""
        return False if self.member_id is None else True

    def is_anonymous(self):
        """False, as anonymous users aren't supported."""
        return True if self.member_id is None else False

    def save(self):
        db.session.add(self)

        return self.commit()

    def update(self, **kwargs):
        for key, value in kwargs.items():
            if key != "member_email" and key != "member_phone" and key != "member_apps_ids":
                if hasattr(self, key):
                    setattr(self, key, value)

        self.member_update_date = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        return self.commit()

    def delete(self):
        db.session.delete(self)

        return self.commit()

    def commit(self):
        db.session.commit()

        return self.member_id

    @classmethod
    def login_username_password(cls, member_username, member_password):
        member = cls.query.filter_by(member_username=member_username).first()

        if member is None:
            return member

        is_valid = verify_hash256(member_password, member.member_password)

        return member if is_valid else None

    def to_dict(self):
        return {c.key: getattr(self, c.key)
                for c in inspect(self).mapper.column_attrs}
