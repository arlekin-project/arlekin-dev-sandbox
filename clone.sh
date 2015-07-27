#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

git clone git@github.com:bmichalski/arlekin-core.git
git clone git@github.com:bmichalski/arlekin-dbal.git
git clone git@github.com:bmichalski/arlekin-dbal-driver-pdo-mysql.git
git clone git@github.com:bmichalski/arlekin-dbal-migration.git
git clone git@github.com:bmichalski/arlekin-dbal-migration-driver-pdo-mysql.git
git clone git@github.com:bmichalski/arlekin-dml.git
git clone git@github.com:bmichalski/arlekin-dml-driver-pdo-mysql.git
git clone git@github.com:bmichalski/docker-arlekin-dev-sandbox.git

cd docker-arlekin-dev-sandbox

ARLEKIN_FOLDERS='arlekin-core
arlekin-dbal
arlekin-dbal-driver-pdo-mysql
arlekin-dbal-migration
arlekin-dbal-migration-driver-pdo-mysql
arlekin-dml
arlekin-dml-driver-pdo-mysql'

mkdir -p arlekin

cd arlekin

for FOLDER in $ARLEKIN_FOLDERS
do
  ln -s ../../$FOLDER $FOLDER
done
