import yaml
import os.path
from urlparse import urlparse


class Ryaml:
    PATH = ''
    IS_PATH = True

    def __init__(self):
        pass

    def set_path(self, path):
        isFile = os.path.isfile(path)

        self.IS_PATH = isFile

        if self.__is_path():
            self.PATH = path
        else:
            self.PATH = ""

    def get_path(self):
        return self.PATH

    def __is_path(self):
        return self.IS_PATH

    def __open_file(self):
        try:
            with open(self.PATH, 'r') as yamlFile:
                data = yaml.load(yamlFile)
            return data
        except:
            return {}

    def read(self):
        return self.__open_file()


if __name__ == '__main__':
    pass
    # PATH_TEST = "./../roles/node/main.yaml"

    # yamlReader = Ryaml()

    # yamlReader.set_path(PATH_TEST)
    # dictPATH = yamlReader.read()
