# Overview

This is a small example based on Spring's [docker documentation](https://spring.io/guides/gs/spring-boot-docker/) how to split a Docker image between dependencies and application code. This reduces push times to repositories a lot.

Build the image with

	mvn clean install dockerfile:build

Run the image with

	docker run --rm -it mlesniak/spring
