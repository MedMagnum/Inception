FROM    debian:bullseye
RUN     apt-get update && apt-get upgrade -y
RUN     apt install wget php-cli php-mysql -y 
RUN     wget "http://www.adminer.org/latest.php"
RUN     mv latest.php index.php
CMD     php -S 0.0.0.0:9090