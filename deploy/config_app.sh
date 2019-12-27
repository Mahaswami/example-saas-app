#!/bin/bash

CONFIG_FILE="/var/www/saas-app/aws.ini"
DATABASE_ARN=`/tmp/get_rds_dsn.sh`

# escape any % characters as the .ini is Python interpolated when Pyramid loads it
DATABASE_ARN=`sed 's/%/%%/g' <<< "$DATABASE_ARN"`

# inject MySQL DSN into Pyramid config
sed -i -e "s/#MYSQL_DATABASE_ARN#/$DATABASE_ARN/" $CONFIG_FILE