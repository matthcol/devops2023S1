#!/bin/bash
TAG=15.2
NAME=postgres_dbmovie
POSTGRES_PASSWORD=password
POSTGRES_PORT=5432

docker run -p $POSTGRES_PORT:5432 \
	-e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
	--name $NAME \
	-d postgres:$TAG
