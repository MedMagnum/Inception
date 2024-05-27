FROM debian:bullseye
RUN apt-get update -y && apt-get install mariadb-server -y
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/create_db.sh /
CMD ["sh" , "/create_db.sh"]
