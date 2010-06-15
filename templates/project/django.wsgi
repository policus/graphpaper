# Below is a sample wsgi file for use with Apache+mod_wsgi.
# Remember, your project isn't probably named project_name.

import os
import sys
import site

site.addsitedir('/home/django/.virtualenvs/projectname/lib/python2.6/site-packages')
sys.path.append('/home/django/sites')
os.environ['DJANGO_SETTINGS_MODULE'] = 'projectname.settings'

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()