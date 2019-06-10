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

# Run services with docker
run-dev:
	@ cp ./docker/.env.example ./docker/.env
	@ docker-compose -f docker/dev.docker-compose.yaml up  

dev-web-docker:
	@ python main.py http