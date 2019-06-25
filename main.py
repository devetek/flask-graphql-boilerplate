import sys
#from models import bootstrap_models
#from logger import bootstrap_logger
#from cli import bootstrap_cli
from config import Config

if __name__ == '__main__' and len(sys.argv):
    """[WIM - Common Interface Modules]
    """
    # bootstrap_models()
    # bootstrap_logger()

    """[CLI Interface Modules]
    """

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

        if Config.FLASK_ENV == 'development':
            app.run(host='0.0.0.0', debug=True)
