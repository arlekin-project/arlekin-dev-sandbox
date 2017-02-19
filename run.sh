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

cd $DOCKER_DEV_REPOSITORY_FULLPATH && \
export SSH_PORT=2222 && \
export MYSQL_ROOT_PASSWORD=root && \
docker-compose -p $PROJECT_NAME build && \
docker-compose -p $PROJECT_NAME up
