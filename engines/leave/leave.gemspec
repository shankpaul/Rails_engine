$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leave/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leave"
  s.version     = Leave::VERSION
  s.authors     = [""]
  s.email       = ["shanpaul06@gmail.com"]
  s.homepage    = "http://www.litehr.com"
  s.summary     = "Summary of Leave."
  s.description = "Description of Leave."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.6"

  s.add_development_dependency "sqlite3"
end
