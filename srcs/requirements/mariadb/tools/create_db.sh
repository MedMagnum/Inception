#!/bin/bash

service mariadb start 

sleep 3

mysql <<EOF
CREATE DATABASE IF NOT EXISTS $db1_name ;
CREATE USER IF NOT EXISTS '$db1_user'@'%' IDENTIFIED BY '$db1_pwd' ;
GRANT ALL PRIVILEGES ON $db1_name.* TO '$db1_user'@'%' ;
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('12345');
FLUSH PRIVILEGES;
EOF

service mariadb stop 
sleep 1
mysqld
