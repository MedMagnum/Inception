FROM debian:bullseye
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx && apt-get install openssl -y
# COPY ./conf/index.php /var/www/html/
COPY ./conf/default.conf /etc/nginx/conf.d/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt -subj /CN=mighmour.42.fr
CMD ["nginx", "-g", "daemon off;"]
