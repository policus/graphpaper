import os
PROJECT_PATH = os.path.dirname(__file__)

ADMINS = (
#    ('Your Name', 'email@example.com'),
)

MANAGERS = ADMINS

TIME_ZONE = 'America/New_York'

LANGUAGE_CODE = 'en-us'

SITE_ID = 1

USE_I18N = True

USE_L10N = True

MEDIA_ROOT = PROJECT_PATH + '/media/'
MEDIA_URL = '/media/'
ADMIN_MEDIA_PREFIX = '/media/admin/'

# Create a new secret key
SECRET_KEY = 'Replace this with a secure key'

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
    'django.template.loaders.eggs.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
)

# Change projectname below to the name of your project
ROOT_URLCONF = 'projectname.urls'

TEMPLATE_DIRS = (
    PROJECT_PATH + '/templates',
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    # 'django.contrib.admin',
    # 'django.contrib.admindocs',
)

try:
    from local_settings import *
except ImportError:
    pass