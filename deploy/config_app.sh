#!/bin/bash

DATABASE_ARN=`/tmp/get_rds_dsn.sh`

sed -i -e "s/#DATABASE_ARN#/$DATABASE_ARN/" $CONFIG_FILE
