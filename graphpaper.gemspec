Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.16"
  s.date = "2010-08-26"

  # Gem Details
  s.name = "graphpaper"
  s.authors = ["Alex Cabrera"]
  s.summary = %q{A Compass extension for creating a Django project skeleton}
  s.description = %q{This compass extension create a Django project skeleton including a lightweight fixed-width grid system based on 960.gs, a flexible HTML Django templates, and integrates HTML5 Boilerplate}
  s.email = "alex@policus.com"
  s.homepage = "http://policus.com/"

  # Gem Files
  s.files = %w(README.markdown)
  s.files += Dir.glob("lib/*.*")
  s.files += Dir.glob("stylesheets/*.*")
  s.files += Dir.glob("stylesheets/graphpaper/*.*")
  s.files += Dir.glob("templates/django/*.*")
  s.files += Dir.glob("templates/django/classes/*.*")
  s.files += Dir.glob("templates/django/common/*.*")
  s.files += Dir.glob("templates/django/config/*.*")
  s.files += Dir.glob("templates/django/templates/*.*")
  s.files += Dir.glob("templates/django/templates/**/*.*")
  s.files += Dir.glob("templates/django/apps/*.*")
  s.files += Dir.glob("templates/django/media/images/*.*")
  s.files += Dir.glob("templates/django/media/javascript/*.*")
  s.files += Dir.glob("templates/boilerplate/*.*")
  s.files += Dir.glob("templates/boilerplate/classes/*.*")
  s.files += Dir.glob("templates/boilerplate/common/*.*")
  s.files += Dir.glob("templates/boilerplate/config/*.*")
  s.files += Dir.glob("templates/boilerplate/media/images/*.*")
  s.files += Dir.glob("templates/boilerplate/media/javascript/*.*")  

  # Gem Bookkeeping
  s.has_rdoc = false
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.10.0.rc3"])
end