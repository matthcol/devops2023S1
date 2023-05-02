#!/bin/bash
TAG=15.2
NAME=postgres_dbmovie
POSTGRES_USER=movie
POSTGRES_PASSWORD=password
POSTGRES_PORT=5432
POSTGRES_DB=dbmovie

docker run -p $POSTGRES_PORT:5432 \
	-e "POSTGRES_USER=$POSTGRES_USER" \
	-e "POSTGRES_PASSWORD=$POSTGRES_PASSWORD" \
	-e "POSTGRES_DB=$POSTGRES_DB" \
	-v $PWD/sql:/docker-entrypoint-initdb.d \
	--name $NAME \
	-d postgres:$TAG
