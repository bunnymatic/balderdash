$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "balderdash/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "balderdash"
  s.version     = Balderdash::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Balderdash."
  s.description = "TODO: Description of Balderdash."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2"

  s.add_development_dependency "sqlite3"
end
