build:
	docker build .

rebuild:
	docker-compose build --no-cache

up:
	docker-compose up -d web

down:
	docker-compose down

run_bash:
	docker exec -it selfnotes_web_1 bash

rspec:
	docker exec -it selfnotes_web_1 bundle exec rspec spec

setup:
	 rake db:create
	 rake db:migrate 
	 rake db:seed

