#!/bin/bash

DB_DIR=$(cd $(dirname $0) && pwd)
cd $DB_DIR

mysql -uroot -e "DROP DATABASE IF EXISTS isubata; CREATE DATABASE isubata;" -proot
mysql -uroot isubata -proot < ./isubata.sql
