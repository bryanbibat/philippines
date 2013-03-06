# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'philippines/version'

Gem::Specification.new do |gem|
  gem.name          = "philippines"
  gem.version       = Philippines::VERSION
  gem.authors       = ["Bryan Bibat"]
  gem.email         = ["bry@bryanbibat.net"]
  gem.description   = %q{Provides data about the Philippines that you may need in your applications.}
  gem.summary       = %q{Philippine data}
  gem.homepage      = "https://github.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 1.9.2"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.13.0"
  
end
