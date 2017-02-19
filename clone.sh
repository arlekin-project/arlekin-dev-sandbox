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
    git clone git@github.com:$GITHUB_ORGANIZATION/$REPOSITORY.git
done

cd $DOCKER_DEV_REPOSITORY_FULLPATH && \
rm -rf $PROJECT_NAME && \
mkdir -p $PROJECT_NAME && \
cd $PROJECT_NAME

for FOLDER in $FOLDERS
do
  ln -s ../../$FOLDER $FOLDER
done
