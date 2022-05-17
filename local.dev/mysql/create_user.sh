#!/bin/bash
set -e

mysql --protocol=socket -uroot -p$MYSQL_ROOT_PASSWORD -h localhost << EOSQL
GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE `hive_banking`;

CREATE USER 'trigger_definer'@'%' IDENTIFIED BY 'trigger_definer';
GRANT ALL PRIVILEGES ON *.* TO 'trigger_definer'@'%';
FLUSH PRIVILEGES;

CREATE USER 'function_definer'@'%' IDENTIFIED BY 'function_definer';
GRANT ALL PRIVILEGES ON *.* TO 'function_definer'@'%';
FLUSH PRIVILEGES;
EOSQL
