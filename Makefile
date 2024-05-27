
all : up

up : 
	docker-compose -f ./srcs/docker-compose.yml up

down : 
	docker-compose -f ./srcs/docker-compose.yml down

stop : 
	docker-compose -f ./srcs/docker-compose.yml stop

start : 
	docker-compose -f ./srcs/docker-compose.yml start

status :
	docker ps

clean : stop
	docker rm -f  $$(docker ps -aq)
	docker rmi -f $$(docker images -q)
