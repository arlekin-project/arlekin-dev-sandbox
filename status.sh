#!/bin/bash

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

echo ''
echo 'Workspace status: '
echo ''
git status

source $DIR/common.sh

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


