
cd /wagtaildemo

/etc/init.d/postgresql start

sudo -u postgres createuser --superuser root

# Fix wagtaildemo/settings/base.py so it uses user 'root' and not 'postgres'
sed -i "s/'USER': 'postgres'/'USER': 'root'/" /wagtaildemo/wagtaildemo/settings/base.py

createdb wagtaildemo
/manage.py syncdb --noinput
/manage.py migrate

# ./manage.py createsuperuser

# http://source.mihelac.org/2009/10/23/django-avoiding-typing-password-for-superuser/
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'test')" | ./manage.py shell

