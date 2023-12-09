#!/bin/bash

# https://www.gnu.org/software/bash/manual/bash.html#The-Set-Builtin
set -e

# Example from https://hub.docker.com/_/postgres
echo "* * * * * * * *"
echo "[PGQL] Welcome to Postgresql database initiator"
echo "* * * * * * * * /"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE devetek_playground;
    CREATE DATABASE devetek_others;
EOSQL
