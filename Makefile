setup:
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
	)

# How To Generate Proto e.g:
# make generate-proto OUTPUT=./grpc/modules/calculator/calculator.proto
generate-proto:
	@ python3 -m venv python_modules
	( \
		source python_modules/bin/activate; \
		python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. $(OUTPUT); \
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