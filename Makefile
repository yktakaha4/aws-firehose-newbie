#!/usr/bin/make -f

.PHONY: build
build:
	docker build -t count-up .
	minikube image load count-up:latest
