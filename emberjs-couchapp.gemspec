# -*- encoding: utf-8 -*-
require File.expand_path('../lib/emberjs-couchapp/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Clemens Müller"]
  gem.email         = ["cmueller.418@gmail.com"]
  gem.description   = %q{Create CouchApp which uses Ember.js}
  gem.summary       = %q{CouchApp using Ember.js}
  gem.homepage      = "https://github.com/pangratz/emberjs-couchapp-gem"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "emberjs-couchapp"
  gem.require_paths = ["lib"]
  gem.version       = EmberjsCouchapp::VERSION

  gem.add_runtime_dependency 'thor'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
end
