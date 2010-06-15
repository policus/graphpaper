# compass-graphpaper

Graphpaper is a Compass extension that creates a flexible Django project 
skeleton. It includes flexible html skeletons and a common sense naming 
conventions that can be applied to most projects. It's intended to allow you 
to run [compass watch](http://compass-style.org/docs/tutorials/command-line/) 
alongside your development server providing a structured way to use SASS when 
developing websites with Django.

Included with Graphpaper is a lightweight fixed-width grid system. Consult 
the [Compass Doucmentation](http://compass-style.org/docs/) for instructions 
on using other frameworks and extensions.

# Installation Instructions

    > git clone git@github.com:alexcabrera/compass-graphpaper.git
    > cd compass-graphpaper
    > gem build graphpaper.gemspec
    > sudo gem install graphpaper-0.1.0.gem

# Usage

Use the compass create command instead of djangoadmin.py to start a new 
project.

    > compass create projectname -r graphpaper --using graphpaper --force \
      --sass-dir=media/sass --css-dir=media/stylesheets -x sass

__IMPORTANT:__ This extension provides its own config.rb so compass will 
throw a warning about not being able a config file because one already exists.
This makes it easier to get all the files in the right locations for a Django
project, but it also changes the preferred syntax from the wimpy, default SCSS
to the manly, whitespace-sensitive [indented SASS](http://bit.ly/cUmklc). 
These damn kids will get off *my* lawn.