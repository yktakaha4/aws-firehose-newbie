#!/usr/bin/make -f

.PHONY: build
build:
	docker build -t count-up .

.PHONY: run
run:
	docker run -it count-up

.PHONY: start
start: stop build
	minikube start
	minikube image load count-up:latest
	kubectl apply -f resources.yaml

.PHONY: stop
stop:
	minikube delete --all --purge
