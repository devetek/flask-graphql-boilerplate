export FLASK_APP=cli/flask
export BUILD_ENV=production

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

createdb: setup
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

# ========================================
# Running development mode without docker, one by one
# ========================================
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

# ========================================
# Running production mode without docker, one by one
# ========================================
prod-web:
	( \
		uwsgi --http 127.0.0.1:5000 --module earthshaker:app; \
	)

# TODO: In progress
prod-rpc:
	( \
		python main.py rpc; \
	)

prod-agent:
	( \
		python wisp.py; \
	)

# ========================================
# Running using docker environment DEVELOPMENT
# Author: Prakasa <prakasa@devetek.com>
# ========================================
run-dev-pgql:
	@ test -f docker/mysql/volume || mkdir -p docker/postgres/volume
	@ test -f docker/redis || mkdir -p docker/redis
	@ cp docker/.env.example docker/.env
	@ cd web/modules/frontend && yarn
	@ docker-compose -f docker/dev.docker-compose.yml down  
	@ docker-compose -f docker/dev.docker-compose.yml up

run-dev-mysql:
	@ test -f docker/mysql/volume || mkdir -p docker/mysql/volume
	@ test -f docker/redis || mkdir -p docker/redis
	@ cp docker/.env.example docker/.env
	@ cd web/modules/frontend && yarn
	@ docker-compose -f docker/dev.docker-compose.yml down  
	@ docker-compose -f docker/dev.docker-compose.yml up

dev-web-docker:
	@ flask initdb;
	@ python main.py http


# ========================================
# Running using docker environment PRODUCTION
# Author: Prakasa <prakasa@devetek.com>
# ========================================
run-prod:
	@ test -f docker/redis || mkdir -p docker/redis
	@ test -f docker/mysql/volume || mkdir -p docker/mysql/volume
	@ docker-compose -f docker/prod.docker-compose.yml up -d

prod-web-docker:
	( \
		flask initdb; \
		uwsgi --http :5000 --module earthshaker:app; \
		supervisord -c process/background.conf; \
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

build-image:
ifeq ($(BUILD_ENV),development)
		$(eval TAG := $(shell echo "development"))
else
	$(eval TAG := $(shell echo "latest"))
endif
	@ docker build -f docker/$(TAG).Dockerfile  -t prakasa1904/tps-py-api:$(TAG) .
	@ docker push prakasa1904/tps-py-api:$(TAG)