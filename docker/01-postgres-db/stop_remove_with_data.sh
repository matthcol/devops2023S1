#!/bin/bash
NAME=postgres_dbmovie
POSTGRES_DB=dbmovie

docker stop $NAME
docker rm -v $NAME
docker volume rm data-pg-$POSTGRES_DB
