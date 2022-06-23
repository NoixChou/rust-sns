CMD_SETUP = ./setup.sh
CMD_UPDATE = ./update.sh
ifeq ($(OS),Windows_NT)
	CMD_SETUP = .\setup.bat
	CMD_UPDATE = .\update.bat
endif

init:
	$(CMD_SETUP)

up:
	docker-compose up -d

up-lara:
	docker-compose -f ./docker-compose.yml -f ./docker-compose.laravel-backend.yml up -d --no-deps db php composer-api api-laravel web

up-sym:
	docker-compose -f ./docker-compose.yml -f ./docker-compose.symfony-backend.yml up -d --no-deps db php composer-api api-symfony web

down:
	docker-compose -f ./docker-compose.yml -f ./docker-compose.laravel-backend.yml -p rust-sns down --remove-orphans

update:
	$(CMD_UPDATE)
