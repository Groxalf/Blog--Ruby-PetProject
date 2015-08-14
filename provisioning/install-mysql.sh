#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password '"$1" 
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password '"$1" 
apt-get update
apt-get install -y mysql-server libmysqlclient-dev
