up-d:
	@docker-compose up -d

env-init:
	@test -f .env || cp .env.example .env

up:
	@docker-compose up -d --build

install: env-init up-d

dump:
	@docker-compose exec -T postgres pg_dump -U postgres | gzip > dumps/`date +%Y-%m-%d`.sql.gz
