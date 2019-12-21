#!/bin/bash -e

. /opt/paco/EC2Manager/ec2lm_functions.bash

SECRETS_MANAGER_REF="${EC2LM_PACO_ENVIRONMENT_REF}.secrets_manager.saas.site"
CONFIG_FILE="/var/www/saas-app/server.ini"

ec2lm_replace_secret_in_file ${SECRETS_MANAGER_REF}.database "#MYSQL_DATABASE_PASSWORD#" ${CONFIG_FILE}
