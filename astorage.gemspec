# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'astorage/version'

Gem::Specification.new do |gem|
  gem.name          = "astorage"
  gem.version       = AStorage::VERSION
  gem.authors       = ["Éverton Ribeiro", "Azuki"]
  gem.email         = ["nuxlli@gmail.com"]
  gem.description   = %q{A simple interface to call Azure Storage API.}
  gem.summary       = %q{A simple interface to call Azure Storage API.}
  gem.homepage      = "https://github.com/azukiapp/astorage"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "http_monkey"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest", "~> 3"
  gem.add_development_dependency "minitest-reporters", "~> 0.7.0"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "minion_server"
end
