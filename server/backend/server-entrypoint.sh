#!/bin/sh


python3 manage.py collectstatic --noinput

source env-vars.txt

# python manage.py createsuperuser --noinput
python3 manage.py migrate

gunicorn backend.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4

# for debug
#python manage.py runserver 0.0.0.0:8000
