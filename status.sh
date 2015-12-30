#!/bin/bash

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

ARLEKIN_FOLDERS='arlekin-common
arlekin-dbal
arlekin-dbal-driver-pdo-mysql
arlekin-dbal-migration
arlekin-dbal-migration-driver-pdo-mysql
arlekin-dml
arlekin-dml-driver-pdo-mysql'

VOLUMES=""

for FOLDER in $ARLEKIN_FOLDERS
do
  ARLEKIN_REPO=$DIR/$FOLDER
  echo "Changing directory: $ARLEKIN_REPO"
  cd $ARLEKIN_REPO && git status
done


