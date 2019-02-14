from config import Config
#from models import bootstrap_models
#from logger import bootstrap_logger
#from cli import bootstrap_cli
from web import bootstrap_web

if __name__ == '__main__':
    """[WIM - Common Interface Modules]
    """
    # bootstrap_models()
    # bootstrap_logger()

    """[WIM - WS Interface Modules]
    """

    """[WIM - Web Interface Modules]
    """
    app = bootstrap_web(Config)
    app.run()

    """[CLI Interface Modules]
    """
