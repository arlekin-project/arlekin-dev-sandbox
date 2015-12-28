#!/bin/bash

ARLEKIN_PHP_SOURCE_FOLDERS='arlekin-common
arlekin-dbal
arlekin-dbal-driver-pdo-mysql
arlekin-dbal-migration
arlekin-dbal-migration-driver-pdo-mysql
arlekin-dml
arlekin-dml-driver-pdo-mysql'

ARLEKIN_REPOSITORIES=$ARLEKIN_PHP_SOURCE_FOLDERS" docker-arlekin-dev-sandbox"
ARLEKIN_FOLDERS=$ARLEKIN_REPOSITORIES