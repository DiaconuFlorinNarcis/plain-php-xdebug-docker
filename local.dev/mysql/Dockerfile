FROM mysql/mysql-server:latest

COPY create_db.sql /docker-entrypoint-initdb.d/
COPY create_user.sh /docker-entrypoint-initdb.d/

EXPOSE 3306