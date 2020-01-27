DB := pgql
FLASK_APP := cli/flask
BUILD_ENV := production

# Setup python virtualenv to support IDE
.PHONY: setup
setup:
	@ which pip3 || exit 1
	@ pip3 install virtualenv
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
	)

# Build base image base on environment, development or production
.PHONY: build
build:
ifeq ($(BUILD_ENV),development)
		$(eval IMG_ENV := $(shell echo "development"))
		$(eval TAG := $(shell echo "development"))
endif
ifeq ($(BUILD_ENV),frontend)
		$(eval IMG_ENV := $(shell echo "frontend"))
		$(eval TAG := $(shell echo "frontend"))
endif
ifeq ($(BUILD_ENV),production)
	$(eval IMG_ENV := $(shell echo "production"))
	$(eval TAG := $(shell echo "latest"))
endif

	@ docker build -f docker/$(IMG_ENV).Dockerfile  -t prakasa1904/tps-py-api:$(TAG) .
	@ docker push prakasa1904/tps-py-api:$(TAG)

# Test db initiator
db:
	( \
		export FLASK_APP=cli/flask; \
		export FLASK_ENV=development; \
		flask initdb; \
	)

# To generate proto, create your first proto file under `./rpc/(module-name)/(module-name.proto)` then execute make proto OUTPUT=module-name
.PHONY: proto
proto:
	( \
		source python_modules/bin/activate; \
		mkdir -p ./rpc/modules/$(OUTPUT); \
		echo "syntax = \"proto3\";" > ./rpc/modules/$(OUTPUT)/$(OUTPUT).proto; \
		python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. ./rpc/modules/$(OUTPUT)/$(OUTPUT).proto; \
	)

# ========================================
# Running using docker environment DEVELOPMENT
# Author: Prakasa <prakasa@devetek.com>
# ========================================
.PHONY: run-dev
run-dev:
	# Validate frontend runner
	$(eval WHICH_NODE := $(shell which node))
	$(eval WHICH_YARN := $(shell which yarn))

	@ test -n "$(WHICH_NODE)" || ./process/dev/validator node
	@ test -n "$(WHICH_YARN)" || ./process/dev/validator yarn

	# Validate selecting database engine, only support for mysql and pgql
ifeq ($(DB),)
	@ sh -c "Please use `make run-dev DB=mysql` OR `make run-dev DB=pgql` && exit 1"
endif

	@ cp -rf docker/dev-$(DB).docker-compose.yml docker-compose.yml
	@ test -f docker/$(DB)/volume || mkdir -p docker/$(DB)/volume
	@ test -f docker/redis || mkdir -p docker/redis
	@ cd web/modules/frontend && yarn
	@ docker-compose down --remove-orphans
	@ docker-compose up

.PHONY: dev-up
dev-up:
	( \
		export DB=$(DB); \
		export FLASK_APP=cli/flask; \
		export FLASK_ENV=development; \
		flask initdb; \
		python main.py http; \
	)

# ========================================
# Running using docker environment PRODUCTION
# Author: Prakasa <prakasa@devetek.com>
# ========================================
.PHONY: run-prod
run-prod:
	@ test -f docker/redis || mkdir -p docker/redis
	@ test -f docker/mysql/volume || mkdir -p docker/mysql/volume
	@ docker-compose -f docker/prod.docker-compose.yml up -d

.PHONY: prod-up
prod-up:
	( \
		export DB=$(DB); \
		export FLASK_APP=cli/flask; \
		export FLASK_ENV=production; \
		flask initdb; \
		uwsgi --http :5500 --module main:app; \
	)
	# supervisord -c process/background.conf; \