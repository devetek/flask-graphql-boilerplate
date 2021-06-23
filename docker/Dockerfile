# https://pythonspeed.com/articles/base-image-python-docker-images/
# https://bradleyzhou.com/posts/building-slim-uwsgi-docker-image
# FROM python:3.9

# WORKDIR /devetek

# RUN apt-get update && \
#     apt-get install --no-install-recommends -y postgresql-client default-mysql-client && \
#     apt-get clean && rm -rf /var/lib/apt/lists/*

# COPY requirements.txt .

# RUN pip install -r requirements.txt



FROM python:3.9-slim-buster

WORKDIR /devetek

RUN apt-get update && \
    apt-get install --no-install-recommends -y gcc libc6-dev postgresql-client default-mysql-client && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install -r requirements.txt
