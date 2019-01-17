import time
import validators
import json
import requests
import sys
from pprint import pprint
from urlparse import urlparse

"""
Rjson Class
descriptions:
Read json and return data as dictionary
"""

import sys


class Rjson:
    PATH = ''
    IS_PATH = True

    def __init__(self):
        pass

    def set_path(self, path):
        dataURL = urlparse(path)

        print dataURL.scheme

        if dataURL.scheme == "" and dataURL.netloc == "":
            self.IS_PATH = False
        else:
            self.IS_PATH = True

        if path != "":
            self.PATH = path
        else:
            self.PATH = ""

    def get_path(self):
        return self.PATH

    def __is_path(self):
        return self.IS_PATH

    def __open_file(self):
        try:
            with open(self.PATH) as f:
                data = json.load(f)
            return data
        except:
            return {}

    def __open_url(self):
        try:
            req = requests.get(self.PATH)

            if req.status_code == 200:
                return req.json()
            else:
                return {}
        except:
            print "URL: except condition"
            return {}

    def read(self):
        if self.__is_path() != True:
            return self.__open_file()
        else:
            return self.__open_url()


if __name__ == '__main__':
    """
    START: DEVELOPMENT environment
    test mode only
    """

    Rjson = Rjson()

    Rjson.set_path("./../roles/node/main.json")
    dictPATH = Rjson.read()

    print "Data JSON From File %s" % dictPATH

    Rjson.set_path("https://jsonplaceholder.typicode.com/users")
    dictURL = Rjson.read()

    print "Data JSON From URL %s" % dictURL
