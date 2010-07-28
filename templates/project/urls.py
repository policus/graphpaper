from django.conf.urls.defaults import *
from django.views.generic.simple import direct_to_template
from django.conf import settings

# Uncomment the following two lines to load the admin
# from django.contrib import admin
# admin.autodiscover()
    
urlpatterns = patterns('',
    url(r'^$', direct_to_template, {'template':'home/welcome.html'}, name="home_page"),
)

# Django's built-in development server should handle static media when developing
if settings.ENVIRONMENT == 'development':
    urlpatterns += patterns('',
        url(r'^media/(?P<path>.*)$', 'django.views.static.serve', 
            { 'document_root' : settings.MEDIA_ROOT }
        ),
    )
