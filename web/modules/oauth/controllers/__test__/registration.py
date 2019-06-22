import time
import json
import requests
import schedule


host = 'http://localhost:5000/oauth/registration'
headers = {'Content-type': 'application/json'}

def one_username():
  data = { 'username': 'usertest1', 'password': 'password' }
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
  
  data = { 'username': randomString(10), 'password': 'password' }
  r = requests.post(host, data=json.dumps(data), headers=headers)
  json_data = r.json()

  print(r.status_code)
  print(r.headers)
  print(json_data)

  data = { 'username': randomString(10), 'password': 'password2' }
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