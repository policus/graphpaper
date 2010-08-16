# compass-graphpaper

Graphpaper is a Compass extension that creates a Django project 
skeleton suitable for use with SASS. It includes flexible html skeletons and 
common sense naming conventions that can be applied to most projects. It's 
intended to allow you to run [compass watch](http://compass-style.org/docs/tutorials/command-line/) 
alongside your development server providing a structured way to use SASS when 
developing websites with Django.

Included with Graphpaper is a lightweight fixed-width grid system. Consult 
the [Compass Doucmentation](http://compass-style.org/docs/) for instructions 
on using other frameworks and extensions.

# Installation Instructions

    > git clone git@github.com:alexcabrera/compass-graphpaper.git
    > cd compass-graphpaper
    > gem build graphpaper.gemspec
    > sudo gem install graphpaper-0.1.6.gem

# Usage

Use the compass create command instead of djangoadmin.py to start a new 
project.

    > compass create projectname -r graphpaper --using graphpaper --force \
      --sass-dir=media/sass --css-dir=media/stylesheets \
	  --image-dir=media/images -x sass

__IMPORTANT:__ The above command modifies Compass's config.rb so that Django
can find the stylesheets. Additionally, it changes the name of Compass's *src*
directory the more sensible *sass* and places it in the media directory. Most
importantly, it also changes the preferred syntax from the wimpy, default SCSS
to the manly, whitespace-sensitive [indented SASS](http://bit.ly/cUmklc). 
These damn kids will get off *my* lawn.

    > cd projectname
    
Now you can run *compass watch* from your Django project's root directory. I 
recommend doing this in a background tab. One day I'll write a wrapper around
the *manage.py runserver* command, but that day is not today. The two tab 
solution works just fine.

This Django skeleton uses the local_settings method of deploying to a 
production environment. It comes with a file called local_settings\_example.py
which imports your development settings from development_settings.py. The 
first thing you should do is copy over local_settings\_example.py to 
local_settings.py. That's confusing; just copy/paste the code below.

    > cp local_settings_example.py local_settings.py

You'll also want to change your ROOT_URLCONF (line 42 in settings.py) to point
to your project's root urls; unless of course your project's name is 
*projectname*, in which case it's either a really cool or really boring 
project. While you're add it, create a new SECRET_KEY (line 25 in settings.py).

# Notes on HTML5 Boilerplate Integration #

Graphpaper bakes a lot of the goodness from [HTML5 Boilerplate](http://html5boilerplate.com).
by Paul Irish. I ripped out most of the IE6 compatibility stuff because, well,
we should all try to put that ugliness behind us.

# Template Structure #

Graphpaper uses a pretty flexible site structure and naming conventions that
should work for most projects. It's set up as follows:
	
	site_header - Stuff like branding and global navigation
	page_header - Class-specific header
	page_content - The content of individual pages
	page_footer - Class-sepecific footer
	site_footer - Site-wide footer

It's suggested you create a new directory under templates/ for each page class
in your site. Page classes are the different "sections" of your site for lack
of a better work. In Django they generally map to site-specific apps. Class
directories should include a base.html file which extends templates/base.html
and then each view that needs a template should extend that class's base.html
file. 

A class's base.html must override the *body_class* block. It's also a good 
idea to override *page_header* and *page_footer* if it's shared throughout the
class. 

Individual views must override the *body_id* and should override 
*page_content* (assuming you actually want to display unique page content).