function copy_database() {
  if [ $# -lt 4 ]; then
    echo 'Usage: copy_database username password fromdb todb';
    return
  fi
  echo "Will drop $4 and copy $3 over to it please ctrl-c now you have 5 seconds"
  sleep 5
  mysqladmin -u$1 -p$2 -f drop $4
  mysqldump -u$1 -p$2 $3 | mysql -u$1 -p$2 $4
}

