up-d:
	@docker-compose up -d

env-init:
	@test -f .env || cp .env.example .env

install: env-init up-d
