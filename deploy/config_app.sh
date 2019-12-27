#!/bin/bash

CONFIG_FILE="/var/www/saas-app/aws.ini"
DATABASE_ARN=`/tmp/get_rds_dsn.sh`

sed -i -e "s/#MYSQL_DATABASE_ARN#/$DATABASE_ARN/" $CONFIG_FILE