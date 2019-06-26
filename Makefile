export FLASK_APP=cli/flask

# ========================================
# Setup non docker environment
# Author: Prakasa <prakasa@devetek.com>
# ========================================
setup:
	@ which pip3 || exit 1
	@ pip3 install virtualenv
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
	)

createdb:
	( \
		source python_modules/bin/activate; \
		flask initdb; \
	)

# How To Generate Proto e.g:
# make generate-proto OUTPUT=module-name
generate-proto:
	( \
		source python_modules/bin/activate; \
		python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. ./grpc/modules/$(OUTPUT)/$(OUTPUT).proto; \
	)

dev-web:
	( \
		source python_modules/bin/activate; \
		python main.py http; \
	)

dev-rpc:
	( \
		source python_modules/bin/activate; \
		python main.py rpc; \
	)

dev-agent:
	( \
		source python_modules/bin/activate; \
		python wisp.py; \
	)

prod-web:
	( \
		source python_modules/bin/activate; \
		uwsgi --http 127.0.0.1:5000 --module earthshaker:app; \
	)

prod-rpc:
	( \
		source python_modules/bin/activate; \
		python main.py rpc; \
	)

prod-agent:
	( \
		source python_modules/bin/activate; \
		python wisp.py; \
	)

# ========================================
# Running using docker environment
# Author: Prakasa <prakasa@devetek.com>
# ========================================
run-dev:
	@ test -f docker/mysql/volume || mkdir -p docker/mysql/volume
	@ test -f docker/redis || mkdir -p docker/redis
	@ test -f docker/phpMyAdmin/config || mkdir -p docker/phpMyAdmin/config
	@ test -f docker/phpMyAdmin/sessions || mkdir -p docker/phpMyAdmin/sessions
	@ cp ./docker/.env.example ./docker/.env
	@ docker-compose -f docker/dev.docker-compose.yml up  

dev-web-docker:
	@ python main.py http


run-prod:
	@ test -f docker/redis || mkdir -p docker/redis
	@ test -f docker/mysql/volume || mkdir -p docker/mysql/volume
	# @ cp ./docker/.env.example ./docker/.env // TODO: replace with key value remote config
	@ docker-compose -f docker/prod.docker-compose.yml up

prod-web-docker:
	( \
		uwsgi --http 127.0.0.1:5000 --module earthshaker:app; \
	)


# ==================================================
# Test runner - [pain, code coverage, automation]
# Author: Prakasa <prakasa@devetek.com>
# TODO: Adding modular test and all test
# ==================================================
test-pain:
	( \
		source python_modules/bin/activate; \
		python web/modules/oauth/controllers/__test__/registration.py; \
	)
