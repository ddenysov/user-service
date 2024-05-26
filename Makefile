DC := docker-compose exec
EVENTS := $(DC) events-app
MYSQL := $(DC) -T mysql

ssh:
	@$(EVENTS) bash

start:
	docker-compose up -d

stop:
	docker-compose down

build:
	docker-compose build events-app