#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

git clone git@github.com:bmichalski/arlekin-core.git
git clone git@github.com:bmichalski/arlekin-dbal.git
git clone git@github.com:bmichalski/arlekin-dbal-driver-pdo-mysql.git
git clone git@github.com:bmichalski/arlekin-dbal-migration.git
git clone git@github.com:bmichalski/arlekin-dbal-migration-driver-pdo-mysql.git
git clone git@github.com:bmichalski/arlekin-dml.git
git clone git@github.com:bmichalski/arlekin-dml-driver-pdo-mysql.git