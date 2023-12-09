import os
import sys

from gqlserver import bootstrap_app

if os.environ['FLASK_ENV'] == "development":
    if __name__ == '__main__' and len(sys.argv):
        """[WIM - Web Interface Modules]
        """
        app = bootstrap_app()
        app.run(host='0.0.0.0', debug=True)
else:
    app = bootstrap_app()
