# Load files for SASS stylesheet authoring
stylesheet 'screen.sass', :media => 'screen'
stylesheet 'classes/_home.sass'
stylesheet 'common/_site.sass'
stylesheet 'common/_footer.sass'
stylesheet 'common/_header.sass'
stylesheet 'common/_states.sass'
stylesheet 'config/_colors.sass'
stylesheet 'config/_grid.sass'
stylesheet 'config/_typography.sass'

# Load built-in django templates
file 'templates/base.html'
file 'templates/partials/global_navigation.html'
file 'templates/home/base.html'
file 'templates/home/welcome.html'

# Create common django files
file 'apps/__init__.py'
file 'manage.py'
file 'urls.py'
file 'settings.py'
file 'local_settings_example.py'
file 'development_settings.py'
file 'views.py'
file 'django.wsgi'
file '__init__.py'
file 'media/images/policus_logo.png'
file 'media/javascript/jquery-1.4.2.min.js'

welcome_message %Q{

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
Graphpaper project successfully created!

Just a couple of things before you get started:
    
    1. Configure settings.py
        * On line 25 enter a secure secret key
        * On line 42 modify the ROOT_URL conf to point to your urls.py file
      
    2. Create local_settings.py by copying local_settings_example.py
        * Remember, you'll probably want to ignore this file in your vcs
    
    3. Get ready for deployment by configuring django.wsgi
        * On line 8 change projectname to the actual name of your project
        * On line 10 change projectname.settings to point to your settings file
        
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}