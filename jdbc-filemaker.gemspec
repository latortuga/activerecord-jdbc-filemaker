# -*- encoding: utf-8 -*-
$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'jdbc/filemaker/version'

Gem::Specification.new do |gem|
  gem.name = %q{jdbc-filemaker}
  gem.version = Jdbc::Filemaker::VERSION

  gem.authors = ['Shivam Daryanani']
  gem.email = ['daryananis@gmail.com']

  Dir.chdir(File.dirname(__FILE__)) { gem.files = `git ls-files`.split("\n") }

  gem.rdoc_options = ["--main", "README.md"]
  gem.require_paths = ["lib"]

  gem.summary = %q{JDBC driver for JRuby and Filemaker.}
  gem.description = %q{Install this gem `require 'jdbc/filemaker'` and invoke `Jdbc::Filemaker.load_driver` within JRuby to load the driver.}
end
