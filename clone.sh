#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

source $DIR/common.sh

for REPOSITORY in $ARLEKIN_REPOSITORIES
do
    git clone git@github.com:arlekin-project/$REPOSITORY.git
done

cd docker-arlekin-dev-sandbox

mkdir -p arlekin

cd arlekin

for FOLDER in $ARLEKIN_PHP_SOURCE_FOLDERS
do
  ln -s ../../$FOLDER $FOLDER
done
