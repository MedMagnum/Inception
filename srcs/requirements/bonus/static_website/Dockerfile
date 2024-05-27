FROM debian:bullseye
RUN apt-get update && apt-get upgrade -y
RUN apt install php-cli -y
COPY index.html .
CMD php -S 0.0.0.0:8080