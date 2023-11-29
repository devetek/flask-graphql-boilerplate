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
run:
	# Validate selecting database engine, only support for mysql and pgql
ifeq ($(DB),)
	@ sh -c "Please use `make run-dev DB=mysql` OR `make run-dev DB=pgql` && exit 1"
endif

	@ cp -rf docker/dev-$(DB).docker-compose.yml docker-compose.yml
	@ test -f docker/$(DB)/volume || mkdir -p docker/$(DB)/volume
	@ test -f docker/$(DB)/restore || mkdir -p docker/$(DB)/restore
	@ docker-compose down --remove-orphans
	@ docker-compose up

restart:
	@ docker-compose restart butterfly_backend

down:
	@ docker-compose stop
