#!/bin/bash

echo "Installing Python virtualenv"

BASE_DIR=/var/www/saas-app
/bin/python3 -m venv $BASE_DIR/env
$BASE_DIR/env/bin/pip install --upgrade pip setuptools
$BASE_DIR/env/bin/pip install -e .

# database migrations directory
mkdir -p $BASE_DIR/saas/alembic/versions

# ToDo: create and populate database?
