DB := pgql
FLASK_APP := cli/flask
BUILD_ENV := production

include docker/Makefile

# Setup python virtualenv to support IDE
.PHONY: setup
setup:
	@ which pip || exit 1
	@ pip install virtualenv
	@ python -m venv python_modules
	@( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt --verbose; \
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
	@ test -f docker/$(DB)/restore || mkdir -p docker/$(DB)/restore
	@ test -f docker/redis || mkdir -p docker/redis
	@ cd web/modules/frontend && yarn
	@ docker-compose down --remove-orphans
	@ docker-compose up

# ========================================
# Running using docker environment PRODUCTION
# Author: Prakasa <prakasa@devetek.com>
# ========================================
.PHONY: run-prod
run-prod:
	@ cp -rf docker/prod-$(DB).docker-compose.yml docker-compose.yml
	@ docker-compose build
	@ docker-compose -f docker/prod.docker-compose.yml up -d

.PHONY: prod-up
prod-up:
	@( \
		export DB=$(DB); \
		export FLASK_APP=cli/flask; \
		export FLASK_ENV=production; \
		flask initdb; \
		uwsgi --http :5500 --module main:app; \
	)
	# supervisord -c process/background.conf; \
