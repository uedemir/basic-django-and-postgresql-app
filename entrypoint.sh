#!/bin/sh
python manage.py makemigrations
python manage.py migrate
#python manage.py loaddata fixtures
exec "$@"