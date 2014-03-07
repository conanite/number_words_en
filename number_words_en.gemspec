# -*- coding: utf-8; mode: ruby  -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'number_words_en/version'

Gem::Specification.new do |gem|
  gem.name          = "number_words_en"
  gem.version       = NumberWordsEn::VERSION
  gem.authors       = ["Conan Dalton"]
  gem.license       = 'MIT'
  gem.email         = ["conan@conandalton.net"]
  gem.description   = %q{number_words handler for english}
  gem.summary       = %q{number_words handler for english}
  gem.homepage      = "https://github.com/conanite/number_words_en"

  gem.add_dependency 'number_words'
  gem.add_development_dependency 'rspec', '~> 2.9'
  gem.add_development_dependency 'rspec_numbering_formatter'
  gem.add_development_dependency "bundler", "~> 1.5"
  gem.add_development_dependency "rake"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
