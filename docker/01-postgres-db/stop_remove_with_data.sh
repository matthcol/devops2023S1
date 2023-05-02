#!/bin/bash
POSTGRES_DB=dbmovie
CONTAINER_NAME=postgres_$POSTGRES_DATABASE
DATA_VOLUME_NAME=data_postgres_$POSTGRES_DATABASE

docker stop $CONTAINER_NAME
docker rm -v $CONTAINER_NAME
docker volume rm $DATA_VOLUME_NAME
