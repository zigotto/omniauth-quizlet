# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-quizlet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jesus Lopes"]
  gem.email         = ["jlopes@zigotto.com.br"]
  gem.description   = %q{OmniAuth strategy for Quizlet}
  gem.summary       = %q{OmniAuth strategy for Quizlet}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-quizlet"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Quizlet::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'simplecov'
end
