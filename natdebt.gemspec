# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'natdebt/version'

Gem::Specification.new do |gem|
  gem.name          = "natdebt"
  gem.version       = Natdebt::VERSION
  gem.authors       = ["DrSayre"]
  gem.date	    = '2013-12-08'
  gem.email         = ["DrSayre2002@yahoo.com"]
  gem.description   = "Function that returns the national debt from http://brillig.com/debt_clock/"
  gem.summary       = "Function that returns the national debt from http://brillig.com/debt_clock/"
  gem.homepage      = "https://github.com/DrSayre/natdebt"
  gem.add_dependency "nokogiri"
  gem.files         = ["lib/natdebt.rb"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = ["test/test_natdebt.rb"]
  gem.require_paths = ["lib"]
end
