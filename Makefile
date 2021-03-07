up-d:
	@docker-compose up -d

env-init:
	@test -f .env || cp .env.example .env

up:
	@docker-compose up -d --build

install: env-init up-d
