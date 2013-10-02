$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "decent_generators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "decent_generators"
  s.version     = DecentGenerators::VERSION
  s.authors     = ["Andrew Warner"]
  s.email       = ["wwarner.andrew@gmail.com"]
  s.homepage    = "http://a-warner.github.io"
  s.summary     = "Scaffold generators using decent_exposure standards"
  s.description = "Scaffold generators using decent_exposure standards"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
end
