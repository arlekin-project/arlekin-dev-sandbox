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
arlekin-dml-driver-pdo-mysql'

ARLEKIN_REPOSITORIES=$ARLEKIN_FOLDERS" docker-arlekin-dev-sandbox"

for REPOSITORY in $ARLEKIN_REPOSITORIES
do
    git clone git@github.com:bmichalski/$REPOSITORY.git
done

cd docker-arlekin-dev-sandbox

mkdir -p arlekin

cd arlekin

for FOLDER in $ARLEKIN_FOLDERS
do
  ln -s ../../$FOLDER $FOLDER
done
