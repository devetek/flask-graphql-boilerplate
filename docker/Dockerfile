FROM python:3.7.3-alpine

workdir /devetek

COPY requirements.txt .

ENV ALPINE_VERSION=3.8 \

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
      git \
      curl \
      ca-certificates \
      libssl1.0 \
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

RUN set -ex ;\
    echo "http://dl-cdn.alpinelinux.org/alpine/v$ALPINE_VERSION/community" >> /etc/apk/repositories; \
    echo "http://dl-cdn.alpinelinux.org/alpine/v$ALPINE_VERSION/main" >> /etc/apk/repositories; \
    apk add --no-cache $PACKAGES; \
    apk add --no-cache --virtual .build-deps $PYTHON_BUILD_PACKAGES; \
    pip install --upgrade pip; \
    pip install -r requirements.txt; \
    apk del --no-cache --purge .build-deps; \
    rm -rf /var/cache/apk/*; \