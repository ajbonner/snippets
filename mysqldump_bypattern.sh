#!/bin/bash

if [ $# -lt 5 ]; then
  echo "Usage: $0 dbname dbuser dbpass pattern outputfile"
  exit 1
fi

DBNAME=$1
DBUSER=$2
DBPASS=$3
PATTERN=$4
OUTPUTFILE=$5

TABLES=( `mysql -u$DBUSER -p$DBPASS $DBNAME --silent -e "show tables like '$PATTERN'"` )

for TABLE in "${TABLES[@]}"; do
  mysqldump -u$DBUSER -p$DBPASS $DBNAME $TABLE >> $OUTPUTFILE
done
