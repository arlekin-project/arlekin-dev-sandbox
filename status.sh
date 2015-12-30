#!/bin/bash

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source $DIR/common.sh

for REPOSITORY in $ARLEKIN_REPOSITORIES
do
  ARLEKIN_REPOSITORY_FULLPATH=$DIR/$REPOSITORY
  echo "Changing directory: $ARLEKIN_REPOSITORY_FULLPATH"
  cd $ARLEKIN_REPOSITORY_FULLPATH && git status
done


