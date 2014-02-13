
# Dockerfile for the wagtail demo, incomplete :(

# Run eveything in one container

FROM dockerfile/nodejs 
MAINTAINER Øyvind Skaar

RUN apt-get install -y build-essential
RUN apt-get install -y git                       # Just to get the source
RUN apt-get install -y postgresql  libpq-dev     # Demo can run on sqlite3, but the installer still looks for pg_.. bins
RUN apt-get install -y python-dev  python-pip
RUN apt-get install -y libxml2-dev libxslt1-dev


# Usefull for other npm installs, not needed with dockerfile/nodejs:
# npm config set registry http://registry.npmjs.org/

# Coffeescript
RUN npm install -g coffee-script

# LESS
RUN npm install -g less

# Wagtail demo
RUN cd / && git clone https://github.com/torchbox/wagtaildemo.git

RUN cd /wagtaildemo && pip install -r requirements/dev.txt


# /etc/init.d/postgresql start

RUN sudo -u postgres createuser --superuser root

# # Fix wagtaildemo/settings/base.py so it uses user 'root' and not 'postgres'
RUN sed -i "s/'USER': 'postgres'/'USER': 'root'/" /wagtaildemo/wagtaildemo/settings/base.py

RUN createdb wagtaildemo
RUN cd /wagtaildemo && ./manage.py syncdb --noinput
RUN cd /wagtaildemo && ./manage.py migrate
RUN cd /wagtaildemo && ./manage.py createsuperuser

CMD: /etc/init.d/posrgres start && cd ./manage.py runserver 0.0.0.0:8000


