$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
if ENV['CI']
  require 'simplecov'
  require 'coveralls'
  require 'codeclimate-test-reporter'
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ]
  dir = File.join(Dir.pwd, 'coverage')
  SimpleCov.coverage_dir(dir)
  SimpleCov.start do
    add_group 'lib', 'lib'
  end
  CodeClimate::TestReporter.start
end
require 'rounders/css_selector_matcher'
