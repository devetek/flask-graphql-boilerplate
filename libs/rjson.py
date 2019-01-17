import json
import requests
from urlparse import urlparse


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
    pass
    # PATH_TEST = "./../roles/node/main.json"
    # URL_TEST = "https://jsonplaceholder.typicode.com/users"

    # Rjson = Rjson()

    # Rjson.set_path(PATH_TEST)
    # dictPATH = Rjson.read()

    # print "Data JSON From File %s" % dictPATH

    # Rjson.set_path(URL_TEST)
    # dictURL = Rjson.read()

    # print "Data JSON From URL %s" % dictURL
