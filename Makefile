.PHONY: 13 12

def:
	docker build -t pyramation/postgres:11.3-alpine -f ./11/Dockerfile ./11/
	docker build -t pyramation/postgis:11.3-alpine -f ./11/Dockerfile.postgis ./11/
	docker build -t pyramation/postgres:12.3-alpine -f ./12/Dockerfile ./12/
	docker build -t pyramation/postgis:12.3-alpine -f ./12/Dockerfile.postgis ./12/
	docker build -t pyramation/postgres:13.3-alpine -f ./13/Dockerfile ./13/
	docker build -t pyramation/postgis:13.3-alpine -f ./13/Dockerfile.postgis ./13/

12:
	docker build -t pyramation/postgres:12.3-alpine -f ./12/Dockerfile ./12/
	docker build -t pyramation/postgis:12.3-alpine -f ./12/Dockerfile.postgis ./12/

13:
	docker build -t pyramation/postgres:13.3-alpine -f ./13/Dockerfile ./13/
	docker build -t pyramation/postgis:13.3-alpine -f ./13/Dockerfile.postgis ./13/

ssh:
	docker run -it pyramation/postgres:11.3-alpine /bin/sh

push11:
	docker push pyramation/postgres:11.3-alpine
	docker push pyramation/postgis:11.3-alpine

push12:
	docker push pyramation/postgres:12.3-alpine
	docker push pyramation/postgis:12.3-alpine

push13:
	docker push pyramation/postgres:13.3-alpine
	docker push pyramation/postgis:13.3-alpine

latest:
	docker tag pyramation/postgres:13.3-alpine pyramation/postgres:latest
	docker push pyramation/postgres:latest
	docker tag pyramation/postgis:13.3-alpine pyramation/postgis:latest
	docker push pyramation/postgis:latest
