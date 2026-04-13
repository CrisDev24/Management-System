#!/usr/bin/env bash

set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --noinput
python manage.py migrate

DJANGO_SUPERUSER_PASSWORD=120321
python manage.py createsuperuser --noinput --username admin --email cristianahl08@gmail.com
