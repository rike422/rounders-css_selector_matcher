# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rounders/css_selector_matcher/version'

Gem::Specification.new do |spec|
  spec.name          = 'rounders-css_selector_matcher'
  spec.version       = Rounders::CssSelectorMatcher::VERSION
  spec.authors       = ['akira.takahashi']
  spec.email         = ['rike422@gmail.com']
  spec.summary       = 'rounders plugin, be able to matches by css selector'
  spec.homepage      = 'https://github.com/rike422/rounders-css_selector_matcher'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_dependency 'rounders'
  spec.add_dependency 'nokogiri'
end
