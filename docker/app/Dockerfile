# https://hub.docker.com/_/golang
FROM golang:1.22
RUN apt-get update && apt-get install -y git
RUN mkdir -p /app/src && chmod -R 0777 /app/src
RUN mkdir -p /.cache && chmod -R 0777 /.cache
WORKDIR /app/src