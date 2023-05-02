#!/bin/bash
NAME=postgres_dbmovie
POSTGRES_USER=movie
POSTGRES_DB=dbmovie

docker exec -it $NAME psql -U $POSTGRES_USER -d $POSTGRES_DB
