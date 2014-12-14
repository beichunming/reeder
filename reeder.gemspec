# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reeder/version'

Gem::Specification.new do |spec|
  spec.name          = 'reeder'
  spec.version       = Reeder::VERSION
  spec.authors       = ['Luca Guidi']
  spec.email         = ['me@lucaguidi.com']
  spec.summary       = %q{A simple feed reader build with Lotus}
  spec.description   = %q{A simple feed reader build with Lotus}
  spec.homepage      = 'https://github.com/jodosha/reeder'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'dotenv-deployment', '~> 0'
  spec.add_dependency 'feedjira',          '~> 1'
  spec.add_dependency 'sqlite3',           '~> 1.3'
  spec.add_dependency 'lotus-model',       '~> 0.1'
  spec.add_dependency 'lotusrb',           '~> 0.1'

  spec.add_development_dependency 'bundler',  '~> 1.6'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'dotenv',   '~> 1.0'
  spec.add_development_dependency 'rspec',    '~> 3'
  spec.add_development_dependency 'vcr',      '~> 2.7'
  spec.add_development_dependency 'webmock',  '~> 1'
  spec.add_development_dependency 'capybara', '~> 2'
end
