.PHONY: 12

def:
	docker build -t pyramation/postgres:11.3-alpine -f ./11/Dockerfile ./11/
	docker build -t pyramation/postgis:11.3-alpine -f ./11/Dockerfile.postgis ./11/
	docker build -t pyramation/postgres:12.3-alpine -f ./12/Dockerfile ./12/
	docker build -t pyramation/postgis:12.3-alpine -f ./12/Dockerfile.postgis ./12/

12:
	docker build -t pyramation/postgres:12.3-alpine -f ./12/Dockerfile ./12/
	docker build -t pyramation/postgis:12.3-alpine -f ./12/Dockerfile.postgis ./12/

ssh:
	docker run -it pyramation/postgres:11.3-alpine /bin/sh

push11:
	docker push pyramation/postgres:11.3-alpine
	docker push pyramation/postgis:11.3-alpine

push12:
	docker push pyramation/postgres:12.3-alpine
	docker push pyramation/postgis:12.3-alpine

latest:
	docker tag pyramation/postgres:12.3-alpine pyramation/postgres:latest
	docker push pyramation/postgres:latest
	docker tag pyramation/postgis:12.3-alpine pyramation/postgis:latest
	docker push pyramation/postgis:latest
