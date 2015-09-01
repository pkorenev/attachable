$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "attachable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "attachable"
  s.version     = Attachable::VERSION
  s.authors     = ["VoroninNick"]
  s.email       = ["p.korenev@voroninstudio.eu"]
  s.homepage    = "https://github.com/pkorenev/attachable"
  s.summary     = "https://github.com/pkorenev/attachable"
  s.description = "https://github.com/pkorenev/attachable"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4"
  s.add_dependency "paperclip"

  s.add_development_dependency "sqlite3"
end
