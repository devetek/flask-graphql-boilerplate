import sys

from config import Config

if Config.FLASK_ENV == "development":
    if __name__ == '__main__' and len(sys.argv):
        if sys.argv[1] == 'rpc':
            from rpc import bootstrap_rpc

            """[WIM - RPC Interface Modules]
            """
            bootstrap_rpc()
        else:
            from web import bootstrap_web

            """[WIM - WS Interface Modules]
            """

            """[WIM - Web Interface Modules]
            """
            app = bootstrap_web(Config)

            app.run(host='0.0.0.0', debug=True)
else:
    app = bootstrap_web(Config)
