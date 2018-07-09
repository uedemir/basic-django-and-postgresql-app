FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1
ENV INSTALL_PATH /code
RUN mkdir -p /var/tmp/django_cache
RUN rm -f /var/tmp/django_cache/*
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY /requirements.txt /requirements.txt
# make available run pip install psycopg2
RUN apk update && apk add --virtual build-deps gcc python3-dev musl-dev && apk add postgresql-dev && apk add --no-cache jpeg-dev zlib-dev
RUN pip3 install -r /requirements.txt
# add bash into alpine linux
RUN apk add --update bash && rm -rf /var/cache/apk/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ADD . /code/

