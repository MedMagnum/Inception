FROM debian:bullseye

RUN apt-get update -y 

RUN apt-get install php7.4-fpm  php7.4-mysql -y


RUN apt-get install curl -y


COPY ./tools/script.sh /
COPY ./conf/wp-config.php /

RUN chmod +x /script.sh /
WORKDIR /var/www/html/
CMD [ "/script.sh"]
