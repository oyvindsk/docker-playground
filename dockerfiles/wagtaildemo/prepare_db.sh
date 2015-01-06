cd /wagtaildemo

# Disable ssl in the postgres config, it makes everything harder and we don't need it anyway.
# FIXME this could break in the future 
sed -i 's/ssl = true/ssl = false/'  /etc/postgresql/9.3/main/postgresql.conf

/etc/init.d/postgresql start

sudo -u postgres createuser --superuser root

# Fix wagtaildemo/settings/base.py so it uses user 'root' and not 'postgres'
sed -i "s/'USER': 'postgres'/'USER': 'root'/" /wagtaildemo/wagtaildemo/settings/base.py

createdb wagtaildemo
./manage.py migrate --noinput
./manage.py load_initial_data

# ./manage.py createsuperuser

# http://source.mihelac.org/2009/10/23/django-avoiding-typing-password-for-superuser/
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'test')" | ./manage.py shell
