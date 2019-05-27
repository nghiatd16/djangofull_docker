build:
	docker-compose build

up:
	docker-compose up -d

up-non-daemon:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose restart

shell-nginx:
	docker exec -ti nginx_container /bin/sh

shell-web:
	docker exec -ti web_container /bin/sh

shell-db:
	docker exec -ti postgres_container /bin/sh

shell-redis:
	docker exec -ti redis_container /bin/sh

restart-nginx:
	docker-compose restart nginx 

restart-pgadmin:
	docker-compose restart pgadmin 

restart-web:
	docker-compose restart web  

restart-db:
	docker-compose restart db

restart-redis:
	docker-compose restart redis

log-nginx:
	docker-compose logs nginx 

log-pgadmin:
	docker-compose logs pgadmin 

log-web:
	docker-compose logs web  

log-db:
	docker-compose logs db

log-redis:
	docker-compose logs redis

collectstatic:
	docker exec dz01 /bin/sh -c "python manage.py collectstatic --noinput"  