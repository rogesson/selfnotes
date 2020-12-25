build:
	docker build .

rebuild:
	docker build . --no-cache

run:
	docker-compose up web

down:
	docker-compose down

bash:
	docker exec -it selfnotes_web_1 bash
