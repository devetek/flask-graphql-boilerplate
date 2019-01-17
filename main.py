import fire
from config import main
from libs import curl
from libs import reader

"""
Define roles modules
"""
from roles.calculator import double

if __name__ == '__main__':
    fire.Fire(double.Calculator)
