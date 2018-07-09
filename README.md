# Django and Postgresql (pgadmin also) with Docker

Simple dockerized django application with postgresql db.

ref: https://docs.docker.com/compose/django/#create-a-django-project

If you follow the link above, don't forget to change python version in Dockerfile. Otherwise you will get `SyntaxError: Generator expression must be parenthezised / python manage.py migrate` error.

solution ref: https://stackoverflow.com/questions/48822571/syntaxerror-generator-expression-must-be-parenthezised-python-manage-py-migra
# Start project in local
<ul>
<li><code>docker-compose build</code></li>
<li><code>docker-compose up</code></li>
</ul>
<p align="center">
  <img src="https://imageshack.com/a/img922/5647/FfRVDC.gif">
</p>

After starting the containers; if you want to connect to pgadmin interface, please nagivate to <code>http://0.0.0.0:5050</code> in your browser. You can find login informations in <code><a target="_blank" href="https://github.com/uedemir/basic-django-and-postgresql-app/blob/master/env/dev.env">env/dev.env</a></code> file.

<p align="center">
  <img src="https://imageshack.com/a/img924/5420/KicVVd.gif">
</p>

then add new server to access project's db;

<p align="center">
  <img src="https://imageshack.com/a/img924/6018/yDGKoq.gif">
</p>


