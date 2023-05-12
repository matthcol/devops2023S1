# Docker PostgreSQL Database

## Scripts
- first-run.sh: create volume + run postgres
- run.sh: run postgres with existing data volume
- stop-remove.sh: stop and remove postgres container
- stop-remove-with-data.sh: idem + remove data
- psql.sh: open a postgresql client connected to the database


## Open a shell

docker exec -it postgres_dbmovie sh

docker exec -it postgres_dbmovie bash

## PostgreSQL commands

\l list of databases

\d list of relations (tables, views, sequences,...)

select * from movies where title like 'John Wick%';

insert into movies (title, year) values ('John Wick', 2014);


