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

dev-web: setup
	( \
		source python_modules/bin/activate; \
		python main.py http; \
	)

dev-rpc: setup
	( \
		source python_modules/bin/activate; \
		python main.py rpc; \
	)

run-docker:
	@ docker-compose -f docker/docker-yaml-dev.yaml up  

dev-web-docker:
	( \
		source python_modules/bin/activate; \
		python main.py http; \
	)