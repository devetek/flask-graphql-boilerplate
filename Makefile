env := development
host := 0.0.0.0
port := 3000

# ========================================
# Setup development python virtualenv
# ========================================
setup:
	@ which pip || exit 1
	@ pip install --upgrade pip
	@ pip install virtualenv
	@ python -m venv python_modules
	@( \
		source python_modules/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt --verbose; \
	)

# ========================================
# Running development / production
# ========================================
run:
	@ python -m venv python_modules
	@( \
		source python_modules/bin/activate; \
		env=$(env) host=$(host) port=$(port) python main.py; \
	)

.PHONY: setup run
