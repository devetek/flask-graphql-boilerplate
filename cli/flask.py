import sys
from config import Config
from web import db, bootstrap_web

app = bootstrap_web(Config)


@app.cli.command()
def initdb():
    from models.account.member import AccountMember

    try:
        engine = db.create_engine(Config.SQLALCHEMY_CONNECTION, {})
        engine.execute("CREATE DATABASE IF NOT EXISTS devetek_account")
        engine.execute("CREATE DATABASE IF NOT EXISTS devetek_session")
    except:
        pass

    db.create_all()
