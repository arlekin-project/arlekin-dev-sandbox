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

for REPOSITORY in $REPOSITORIES
do
    git clone git@github.com:$GIT_ORGANIZATION/$REPOSITORY.git
done

cd docker-arlekin-dev && \
rm -rf arlekin && \
mkdir -p arlekin && \
cd arlekin

for FOLDER in $FOLDERS
do
  ln -s ../../$FOLDER $FOLDER
done
