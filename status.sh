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

echo ''
echo 'Workspace status: '
echo ''
git status

for REPOSITORY in $REPOSITORIES
do
  REPOSITORY_FULLPATH=$DIR/$REPOSITORY
  echo ''
  echo '======'
  echo ''
  echo "$REPOSITORY status: "
  echo ''
  echo "Changing directory: $REPOSITORY_FULLPATH"
  cd $REPOSITORY_FULLPATH && git status
done
