#!/bin/bash

echo "Installing Python virtualenv"

BASE_DIR=/var/www/saas-app
/bin/python3 -m venv $BASE_DIR/env
$BASE_DIR/env/bin/pip install --upgrade pip setuptools
$BASE_DIR/env/bin/pip install -e /var/www/saas-app/

# database migrations directory
mkdir -p $BASE_DIR/saas/alembic/versions

# ToDo: create database
# ToDo: only run this for db creation
#$BASE_DIR/env/bin/initialize_saas_db /var/www/saas-app/aws.ini
# run database migrations
#$BASE_DIR/env/bin/alembic -c /var/www/saas-app/aws.ini revision --autogenerate -m "init"
#$BASE_DIR/env/bin/alembic -c /var/www/saas-app/aws.ini upgrade head


