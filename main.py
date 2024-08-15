import os
import sys

from gqlserver import bootstrap_app

if os.environ['env'] == "development":
    if __name__ == '__main__' and len(sys.argv):
        """[WIM - Web Interface Modules]
        """
        app = bootstrap_app()
        app.run(host=os.environ['host'], debug=True, port=os.environ['port'])
else:
    from waitress import serve
    app = bootstrap_app()
    serve(app, host=os.environ['host'], port=os.environ['port'])
