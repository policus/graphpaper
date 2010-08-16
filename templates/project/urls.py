from django.conf.urls.defaults import *
from django.views.generic.simple import direct_to_template
from django.conf import settings

# Uncomment the following two lines to load the admin
# from django.contrib import admin
# admin.autodiscover()
    
urlpatterns = patterns('',
    url(r'^$', direct_to_template, {'template':'home/welcome.html'}, name="home_page"),
    
    # Uncomment the admin/doc line below and add 'django.contrib.admindocs' 
    # to INSTALLED_APPS to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
    
    # Uncomment the following to have Django serve robots.txt, this is generally not a great idea
    # url(r'^robots.txt/$', direct_to_template, {'template':'robots.txt'}, name="robots_file"),
)

# Django's built-in development server should handle static media when developing
if settings.ENVIRONMENT == 'development':
    urlpatterns += patterns('',
        url(r'^media/(?P<path>.*)$', 'django.views.static.serve', 
            { 'document_root' : settings.MEDIA_ROOT }
        ),
    )
