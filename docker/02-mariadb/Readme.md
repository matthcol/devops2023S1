# Docker PostgreSQL Database

## Scripts
- first-run.sh: create volume + run mariadb
- run.sh: run postgres with existing data volume
- stop-remove.sh: stop and remove mariadb container
- stop-remove-with-data.sh: idem + remove data
- mysql.sh: open a mariadb client connected to the database

## Open a shell
docker exec -it mariadb_dbmovie sh

docker exec -it mariadb_dbmovie bash

## Mysql Commands

show databases

show tables


select * from movies where title like 'John Wick%';

insert into movies (title, year) values ('John Wick', 2014);

