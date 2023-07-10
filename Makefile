.PHONY: init up down stop ps mod-tidy

init:
	@make up
	@make ps

up:
	docker compose up -d

down:
	docker compose down
	
stop:
	docker-compose stop
	
ps:
	docker compose ps

mod-tidy:
	docker-compose exec p-zone-app go mod tidy