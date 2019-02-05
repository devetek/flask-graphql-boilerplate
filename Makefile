setup:
	@ pip install -r requirements.txt
dev:
	@ FLASK_APP=server/main.py python -m flask run --host=0.0.0.0

dev-uwsgi:
	@ uwsgi --http :5000 --gevent 1000 --http-websockets --master --wsgi-file ./server/main.py --callable app