FROM mysql:latest

WORKDIR /var/lib/mysql/

ENV MYSQL_ROOT_PASSWORD=adminadmin

ENV MYSQL_DATABASE=meubanco

ADD sql.sql /docker-entrypoint-initdb.d

EXPOSE 3306