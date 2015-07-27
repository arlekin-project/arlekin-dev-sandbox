#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

ARLEKIN_FOLDERS='arlekin-core
arlekin-dbal
arlekin-dbal-driver-pdo-mysql
arlekin-dbal-migration
arlekin-dbal-migration-driver-pdo-mysql
arlekin-dml
arlekin-dml-driver-pdo-mysql
docker-arlekin-dev-sandbox'

for FOLDER in $ARLEKIN_FOLDERS
do
  sudo rm -rf $DIR/$FOLDER
done
