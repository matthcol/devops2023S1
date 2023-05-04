#/bin/bash
# USAGE: flood_db_pg movie_prefix year count [--docker docker-name] [psql connection args]

MOVIE_PREFIX="$1"
shift
YEAR="$1"
shift
COUNT="$1"
shift

if [ "$1" == "--docker" ]
then
	shift
	CONTAINER="$1"
	shift
	PSQL="docker exec -i $CONTAINER psql"
else
	PSQL=psql
fi

PSQL_ARGS="$@"

echo "psql command line is: $PSQL $PSQL_ARGS" 
TMPFILE=/tmp/__loop__.sql

echo "do" > $TMPFILE 
echo '$$' >> $TMPFILE
echo "begin" >> $TMPFILE
echo "   for counter in 1..${COUNT} loop" >> $TMPFILE
echo "		insert into movies (title, year) values ('${MOVIE_PREFIX}_' || counter, ${YEAR});" >> $TMPFILE
echo "   end loop;" >> $TMPFILE
echo "end; " >> $TMPFILE
echo '$$' >> $TMPFILE
echo ";" >> $TMPFILE

echo ""
echo "Script PG/PLSQL:"
echo ""
cat $TMPFILE
echo ""
cat $TMPFILE | $PSQL $PSQL_ARGS
rm $TMPFILE

# checkup 
echo ""
echo "Checkup:"
$PSQL $PSQL_ARGS -c "select count(*) as NB_MOVIE_ADDED from movies where title like '${MOVIE_PREFIX}%' and year = ${YEAR}"
