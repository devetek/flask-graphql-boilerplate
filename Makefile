export DB=mysql
export FLASK_APP=cli/flask
export BUILD_ENV=production

# ========================================
# Setup non docker environment, to support IDE environment, especially for Visual Studio Code
# Author: Prakasa <prakasa@devetek.com>
# ========================================

# Setup python virtualenv to support IDE
setup:
	@ which pip3 || exit 1
	@ pip3 install virtualenv
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
	)

# To generate proto, create your first proto file under `./rpc/(module-name)/(module-name.proto)` then execute make proto OUTPUT=module-name
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
run-dev:
ifeq ($(DB),)
	@ sh -c "Please use `make run-dev DB=mysql` OR `make run-dev DB=pgql` && exit 1"
endif

	@ cp -rf docker/dev-$(DB).docker-compose.yml docker-compose.yml
	@ test -f docker/$(DB)/volume || mkdir -p docker/$(DB)/volume
	@ test -f docker/redis || mkdir -p docker/redis
	@ cp docker/.env.example docker/.env
	@ cd web/modules/frontend && yarn
	@ docker-compose down --remove-orphans
	@ docker-compose up -d

dev-up:
	( \
		flask initdb; \
		python main.py http; \
	)

# ========================================
# Running using docker environment PRODUCTION
# Author: Prakasa <prakasa@devetek.com>
# TODO: ON PROGRESS!
# ========================================
run-prod:
	@ test -f docker/redis || mkdir -p docker/redis
	@ test -f docker/mysql/volume || mkdir -p docker/mysql/volume
	@ docker-compose -f docker/prod.docker-compose.yml up -d

prod-up:
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
		$(eval IMG_ENV := $(shell echo "development"))
		$(eval TAG := $(shell echo "development"))
else
	$(eval IMG_ENV := $(shell echo "production"))
	$(eval TAG := $(shell echo "latest"))
endif
	@ docker build -f docker/$(IMG_ENV).Dockerfile  -t prakasa1904/tps-py-api:$(TAG) .
	@ docker push prakasa1904/tps-py-api:$(TAG)