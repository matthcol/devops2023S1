#!/bin/bash
POSTGRES_DB=dbmovie
CONTAINER_NAME=postgres_$POSTGRES_DATABASE

docker stop $CONTAINER_NAME
docker rm -v $CONTAINER_NAME
