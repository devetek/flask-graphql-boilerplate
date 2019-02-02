setup:
	@ pip install -r requirements.txt --ignore-installed
dev:
	@ FLASK_APP=server/main.py FLASK_DEBUG=0 python -m flask run