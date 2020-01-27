FROM python:3.7.3-alpine

workdir /devetek

COPY ./agent .
COPY ./cli .
COPY ./config .
COPY ./helpers .
COPY ./libraries .
COPY ./models .
COPY ./process .
COPY ./rpc .
COPY ./web .
COPY ./main.py .
COPY ./Makefile .
COPY requirements.txt .
COPY ./rpc-client.py .

ENV ALPINE_VERSION=3.10 \
    # These are always installed.
    #   * dumb-init: a proper init system for containers, to reap zombie children
    #   * musl: standard C library
    #   * libc6-compat: compatibility libraries for glibc
    #   * linux-headers: commonly needed, and an unusual package name from Alpine.
    #   * build-base: used so we include the basic development packages (gcc)
    #   * bash: so we can access /bin/bash
    #   * git: to ease up clones of repos
    #   * ca-certificates: for SSL verification during Pip and easy_install
    PACKAGES="\
      dumb-init \
      musl \
      libc6-compat \
      linux-headers \
      build-base \
      bash \
      vim \
      git \
      curl \
      libpq \
      postgresql-client \
      mysql-client \
      ca-certificates \
      libffi-dev \
    " \
    # PACKAGES needed to built python
    PYTHON_BUILD_PACKAGES="\
      mariadb-dev \
      py-mysqldb \
      bzip2-dev \
      coreutils \
      dpkg-dev dpkg \
      expat-dev \
      findutils \
      gcc \
      python3-dev \
      postgresql-dev \
      musl-dev \
      gdbm-dev \
      libc-dev \
      libffi-dev \
      libnsl-dev \
      libtirpc-dev \
      linux-headers \
      make \
      ncurses-dev \
      libressl-dev \
      pax-utils \
      readline-dev \
      sqlite-dev \
      tcl-dev \
      tk \
      tk-dev \
      util-linux-dev \
      xz-dev \
      zlib-dev \
      git \
    "

RUN set -ex; \
    apk add --no-cache $PACKAGES; \
    apk add --no-cache --virtual .build-deps $PYTHON_BUILD_PACKAGES; \
    pip install --upgrade pip; \
    pip install -r requirements.txt; \
    apk del --no-cache --purge .build-deps; \
    rm -rf /var/cache/apk/*;