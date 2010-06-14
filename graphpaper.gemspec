Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.8"
  s.date = "2010-06-13"

  # Gem Details
  s.name = "graphpaper"
  s.authors = ["Alex Cabrera"]
  s.summary = %q{a lightweight fixed-grid system for rapid web development}
  s.description = %q{a lightweight fixed-grid system for use with compass}
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
  
  # Gem Bookkeeping
  s.has_rdoc = false
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.10.0.rc3"])
end