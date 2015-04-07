#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

ARLEKIN_CORE_PATH=$DIR/../arlekin-core
ARLEKIN_DBAL_PATH=$DIR/../arlekin-dbal
ARLEKIN_DBAL_DRIVER_PDO_MYSQL_PATH=$DIR/../arlekin-dbal-driver-pdo-mysql
