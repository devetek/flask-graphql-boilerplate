setup:
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
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

# Runner for docker environments
run-dev:
	@ docker-compose -f docker/docker-yaml-dev.yaml up  

setup-docker:
	( \
		pip install -r requirements.txt; \
	)

dev-web-docker: setup-docker
	@ python main.py http