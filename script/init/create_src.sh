#!/bin/bash
cd `dirname $0`
cd ../../

source .env

mkdir src

cp ./script/init/server.go ./src/server.go

# Djangoプロジェクトの作成は現在のユーザーで行う
# https://echo.labstack.com/docs/quick-start
docker compose run -u $(id -u):$(id -g) --rm app bash -c "
go mod init app
go get github.com/labstack/echo/v4
"
