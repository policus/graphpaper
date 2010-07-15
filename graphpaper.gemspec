Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.2"
  s.date = "2010-07-15"

  # Gem Details
  s.name = "graphpaper"
  s.authors = ["Alex Cabrera"]
  s.summary = %q{A Compass extension for creating a Django project skeleton}
  s.description = %q{This compass extension create a Django project skeleton including a lightweight fixed-width grid system and flexible HTML Django templates}
  s.email = "alex@policus.com"
  s.homepage = "http://alexcabrera.me/"

  # Gem Files
  s.files = %w(README.markdown)
  s.files += Dir.glob("lib/*.*")
  s.files += Dir.glob("stylesheets/*.*")
  s.files += Dir.glob("stylesheets/graphpaper/*.*")
  s.files += Dir.glob("templates/project/*.*")
  s.files += Dir.glob("templates/project/classes/*.*")
  s.files += Dir.glob("templates/project/common/*.*")
  s.files += Dir.glob("templates/project/config/*.*")
  s.files += Dir.glob("templates/project/templates/*.*")
  s.files += Dir.glob("templates/project/templates/**/*.*")
  s.files += Dir.glob("templates/project/apps/*.*")
  
  # Gem Bookkeeping
  s.has_rdoc = false
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.10.0.rc3"])
end