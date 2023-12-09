# Build base image base for backend service
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

	@ docker build -f docker/Dockerfile  -t prakasa1904/pywith-pg-mysql:$(TAG) --no-cache .

push:
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

	@ docker push prakasa1904/pywith-pg-mysql:$(TAG)

.PHONY: build push