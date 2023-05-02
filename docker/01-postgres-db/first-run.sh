#!/bin/bash
TAG=15.2
NAME=postgres_dbmovie
POSTGRES_USER=movie
POSTGRES_PASSWORD=password
POSTGRES_PORT=5432
POSTGRES_DB=dbmovie

# create data volume storing the data
docker volume create data-pg-$POSTGRES_DB

# create container PostgreSQL with its data in previous volume
docker run -p $POSTGRES_PORT:5432 \
	-e "POSTGRES_USER=$POSTGRES_USER" \
	-e "POSTGRES_PASSWORD=$POSTGRES_PASSWORD" \
	-e "POSTGRES_DB=$POSTGRES_DB" \
	-v $PWD/sql:/docker-entrypoint-initdb.d \
	-v data-pg-dbmovie:/var/lib/postgresql/data \
	--name $NAME \
	-d postgres:$TAG
