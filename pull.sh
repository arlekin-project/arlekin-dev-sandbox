#!/bin/bash

#Get current file parent directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source $DIR/common.sh

cd $DIR

for REPOSITORY in $REPOSITORIES
do
  cd $DIR/$REPOSITORY && \
  git pull git@github.com:$GITHUB_ORGANIZATION/$REPOSITORY.git
done
