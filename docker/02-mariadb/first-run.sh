#!/bin/bash
TAG=10.11
MARIADB_DATABASE=dbmovie
MARIADB_ROOT_PASSWORD=password
MARIADB_USER=movie
MARIADB_PASSWORD=password
MARIADB_PORT=3306
CONTAINER_NAME=mariadb_$MARIADB_DATABASE
DATA_VOLUME_NAME=data_mariadb_$MARIADB_DATABASE

# create data volume storing the data
docker volume create $DATA_VOLUME_NAME

# create container PostgreSQL with its data in previous volume
docker run -p $MARIADB_PORT:3306 \
	-e "MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD" \
	-e "MARIADB_USER=$MARIADB_USER" \
	-e "MARIADB_PASSWORD=$MARIADB_PASSWORD" \
	-e "MARIADB_DATABASE=$MARIADB_DATABASE" \
	-v $PWD/sql:/docker-entrypoint-initdb.d \
	-v $DATA_VOLUME_NAME:/var/lib/mysql \
	--name $CONTAINER_NAME \
	-d mariadb:$TAG
