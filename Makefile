ENVIRONMENT := development
PORT := 3000

# ========================================
# Setup development python virtualenv
# ========================================
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
# Running development
# ========================================
dev:
	@ python -m venv python_modules
	@( \
		source python_modules/bin/activate; \
		ENVIRONMENT=$(ENVIRONMENT) PORT=$(PORT) python main.py; \
	)

.PHONY: setup run