#!/bin/bash
set -e

# Example from https://hub.docker.com/_/postgres
# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#     CREATE USER docker;
#     CREATE DATABASE docker;
#     GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
# EOSQL

echo "[PGQL] Create your custom script when init database for development mode here!"