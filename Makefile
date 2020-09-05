
def:
	docker build -t pyramation/postgres:11.3-alpine -f ./11.3/Dockerfile ./11.3/
	docker build -t pyramation/postgis:11.3-alpine -f ./11.3/Dockerfile.postgis ./11.3/git

ssh:
	docker run -it pyramation/postgres:11.3-alpine /bin/sh

push:
	docker push pyramation/postgres:11.3-alpine
	docker push pyramation/postgis:11.3-alpine

latest:
	docker tag pyramation/postgres:11.3-alpine pyramation/postgres:latest
	docker push pyramation/postgres:latest
	docker tag pyramation/postgis:11.3-alpine pyramation/postgis:latest
	docker push pyramation/postgis:latest
