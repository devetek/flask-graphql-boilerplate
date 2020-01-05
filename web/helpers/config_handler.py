"""[summary]
TODO: Replace json with orjson base on banchmark
Benchmark result time process:
Python 10.756226062774658
orjson 2.5434837341308594
import orjson as json
"""

import datetime
import json
from configparser import ConfigParser

from flask import current_app


class _ExtraValidator(str):
    def __init__(self, set_str):
        self._str = set_str

    def isfloat(self):
        try:
            float(self._str)
            return True
        except ValueError:
            return False

    def isjson(self):
        start_with = self._str.startswith('{')

        if start_with is False:
            return False

        try:
            json.loads(self._str)
            return True
        except ValueError:
            return False


class FlaskIni(ConfigParser):
    '''Subclass of ConfigParser that must be run inside a
    flask app context. It looks for a special [flask] section of the config
    file and uses that to configure flask's own built-in variables.'''

    def read(self, *args, **kwargs):
        '''Overridden read() method to call parse_flask_section() at the end'''
        ret = ConfigParser.read(self, *args, **kwargs)
        self.parse_flask_section()
        return ret

    def readfp(self, *args, **kwargs):
        '''Overridden readfp() method to call parse_flask_section() at the
        end'''
        ret = ConfigParser.readfp(self, *args, **kwargs)
        self.parse_flask_section()
        return ret

    def parse_flask_section(self):
        '''Parse the [flask] section of your config and hand off the config
        to the app in context.

        Config vars should have the same name as their flask equivalent except
        in all lower-case.'''
        if self.has_section('flask'):
            for item in self.items('flask'):
                self._load_item(item[0])
        else:
            warnings.warn("No [flask] section found in config")

    def _load_item(self, key):
        '''Load the specified item from the [flask] section. Type is
        determined by the type of the equivalent value in app.default_config
        or string if unknown.'''
        key_u = key.upper()
        default = current_app.default_config.get(key_u)
        extra_e = _ExtraValidator(self.get('flask', key))

        # One of the default config vars is a timedelta - interpret it
        # as an int and construct using it
        if isinstance(default, datetime.timedelta):
            current_app.config[key_u] = datetime.timedelta(
                self.getint('flask', key))
        elif isinstance(default, bool):
            current_app.config[key_u] = self.getboolean('flask', key)
        elif isinstance(default, float):
            current_app.config[key_u] = self.getfloat('flask', key)
        elif isinstance(default, int):
            current_app.config[key_u] = self.getint('flask', key)
        else:
            # All the string keys need to be coerced into str()
            # because Flask expects some of them not to be unicode
            if self.get('flask', key).isdigit():
                current_app.config[key_u] = self.getint('flask', key)
            elif self.get('flask', key).isdecimal():
                current_app.config[key_u] = self.getfloat('flask', key)
            elif self.get('flask', key).lower() in ['true', 'false']:
                current_app.config[key_u] = self.getboolean('flask', key)
            elif extra_e.isjson():
                current_app.config[key_u] = json.loads(
                    self.get('flask', key))
            elif extra_e.isfloat():
                current_app.config[key_u] = self.getfloat('flask', key)
            else:
                current_app.config[key_u] = str(self.get('flask', key))
