shell := bash

deps:
	dep ensure

build:
	go build -o ./out/nexus-minimal ./internal

run:
	make build
	./out/nexus-minimal

registry:
	docker build -f ./deployments/Dockerfile . -t astma/nexus-minimal:latest
	docker push astma/nexus-minimal:latest
