# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_reporting/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_reporting'
  spec.version       = ActiveReporting::VERSION
  spec.authors       = ['Tony Drake']
  spec.email         = ['t27duck@gmail.com']

  spec.summary       = 'Add relational OLAP-like functionality for ActiveRecord'
  # spec.description   = 'TODO: Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/t27duck/active_reporting'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 4.2.0'
  spec.add_dependency 'activesupport', '>= 4.2.0'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'faker', '~> 1.7'
  spec.add_development_dependency 'ransack'
  spec.add_development_dependency 'sqlite3'
end
