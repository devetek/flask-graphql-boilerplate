setup:
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
	)

dev:
	( \
		source python_modules/bin/activate; \
		python main.py; \
	)

dev-uwsgi:
	@ uwsgi --http :5000 --gevent 1000 --http-websockets --master --wsgi-file ./main.py --callable app