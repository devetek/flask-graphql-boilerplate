import json
import time

import requests
import schedule

host = 'http://apidev.hompes.id/v2/oauth/registration'
headers = {'Content-type': 'application/json', 'X-App-Id': '1'}


def one_username():
    data = {'member_username': 'usertest1', 'member_password': 'password'}
    r = requests.post(host, data=json.dumps(data), headers=headers)
    json_data = r.json()

    print(r.status_code)
    print(r.headers)
    print(json_data)


def dynamic_username():
    import random
    import string

    def randomString(stringLength=10):
        """Generate a random string of fixed length """
        letters = string.ascii_lowercase

        return ''.join(random.choice(letters) for i in range(stringLength))

    data = {'member_username': randomString(10), 'member_password': 'password'}
    r = requests.post(host, data=json.dumps(data), headers=headers)
    json_data = r.json()

    print(r.status_code)
    print(r.headers)
    print(json_data)

    data = {'member_username': randomString(
        10), 'member_password': 'password2'}
    r = requests.post(host, data=json.dumps(data), headers=headers)
    json_data = r.json()

    print(r.status_code)
    print(r.headers)
    print(json_data)


schedule.every().second.do(one_username)
schedule.every().second.do(dynamic_username)
schedule.every().second.do(dynamic_username)

while True:
    schedule.run_pending()
    time.sleep(1)
