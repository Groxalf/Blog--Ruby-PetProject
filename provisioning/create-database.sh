#!/usr/bin/env bash
mysql -u"$1" -p"$2" -e'CREATE DATABASE blog;'

