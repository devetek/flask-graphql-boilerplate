import sys
#from models import bootstrap_models
#from logger import bootstrap_logger
#from cli import bootstrap_cli
from web import bootstrap_web
from rpc import bootstrap_rpc

from config import Config

print (Config.TESTING)

if __name__ == '__main__':
    """[WIM - Common Interface Modules]
    """
    # bootstrap_models()
    # bootstrap_logger()

    """[CLI Interface Modules]
    """

    if sys.argv[1] == 'rpc':
        """[WIM - RPC Interface Modules]
        """
        bootstrap_rpc()
    else:
        """[WIM - WS Interface Modules]
        """

        """[WIM - Web Interface Modules]
        """
        bootstrap_web(Config)
