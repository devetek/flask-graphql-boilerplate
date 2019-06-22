#!/usr/bin/env bash -e

MYSQL_ROOT_PASSWORD=root


# Generate new database
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE terpusat_content"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE terpusat_log"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE terpusat_media"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE terpusat_region"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE terpusat_user"


# Restore file backup to database
mysql -u root -p"$MYSQL_ROOT_PASSWORD" terpusat_content < /docker-entrypoint-initdb.d/backup/terpusat_content.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" terpusat_log < /docker-entrypoint-initdb.d/backup/terpusat_log.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" terpusat_media < /docker-entrypoint-initdb.d/backup/terpusat_media.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" terpusat_region < /docker-entrypoint-initdb.d/backup/terpusat_region.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" terpusat_user < /docker-entrypoint-initdb.d/backup/terpusat_user.sql