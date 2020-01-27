#!/usr/bin/env bash -e

echo "* * * * * * * *"
echo "[Butterfly][MYSQL] Welcome to MySQL database initiator"
echo "* * * * * * * * /"

mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS devetek_account"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS devetek_session"