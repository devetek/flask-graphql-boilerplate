
from flask_migrate import Migrate
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import and_, or_

db = SQLAlchemy()
migrate = Migrate()
