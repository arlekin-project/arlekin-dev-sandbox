#!/bin/bash

#Get current file parent directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

#Defined
DBAL_REPOSITORY_SHORTNAME='arlekin-dbal'
DOCKER_DEV_REPOSITORY_SHORTNAME='docker-arlekin-dev'

PROJECT_NAME='arlekin'
GITHUB_ORGANIZATION='arlekin-project'

PHP_CONTAINER_NAME='dockerarlekindev_php_1'

REPOSITORIES=$DBAL_REPOSITORY_SHORTNAME" "$DOCKER_DEV_REPOSITORY_SHORTNAME

#Computed
FOLDERS=$REPOSITORIES
DOCKER_DEV_REPOSITORY_FULLPATH=$DIR/$DOCKER_DEV_REPOSITORY_SHORTNAME