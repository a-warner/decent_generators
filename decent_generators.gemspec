$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "decent_generators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "decent_generators"
  s.version     = DecentGenerators::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DecentGenerators."
  s.description = "TODO: Description of DecentGenerators."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
