Pyramid SaaS
============

Getting Started
---------------

- Change directory into your newly created project.

    cd saas

- Create a Python virtual environment.

    python3 -m venv env

- Upgrade packaging tools.

    env/bin/pip install --upgrade pip setuptools

- Install the project in editable mode with its testing requirements.

    env/bin/pip install -e ".[testing]"

- Initialize and upgrade the database using Alembic.

    - Create database:

       mysql> create database saas;

    - Generate your first revision, upgrade to it, load start data:

        env/bin/alembic -c development.ini revision --autogenerate -m "init"
        env/bin/alembic -c development.ini upgrade head
        env/bin/initialize_saas_db development.ini

- Run your project's tests.

    env/bin/pytest

- Run your project.

    env/bin/pserve development.ini