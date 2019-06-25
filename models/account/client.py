from web import db
from datetime import datetime
from sqlalchemy import inspect, text
from sqlalchemy.dialects.mysql import INTEGER, TIMESTAMP


def client_data_input_serializer(data):
    return {
        "client_name": data['client_name'] if "client_name" in data else "",
        "client_description": data['client_description'] if "client_description" in data else "",
        "client_code": data['client_code'] if "client_code" in data else "",
        "client_create_date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "client_update_date": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    }


class AccountClient(db.Model):
    __tablename__ = 'account_client'

    client_id = db.Column(INTEGER(unsigned=True), unique=True,
                          nullable=False, primary_key=True, index=True)
    client_name = db.Column(db.Text)
    client_description = db.Column(db.Text)
    client_code = db.Column(db.VARCHAR(10), unique=True)
    client_create_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP'), nullable=False)
    client_update_date = db.Column(
        TIMESTAMP(), server_default=text('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'), nullable=False)

    def __repr__(self):
        return '<Client {}>'.format(self.client_id)

    def save(self):
        db.session.add(self)
        db.session.commit()

        return self.client_id

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    def to_dict(self):
        return {c.key: getattr(self, c.key)
                for c in inspect(self).mapper.column_attrs}
