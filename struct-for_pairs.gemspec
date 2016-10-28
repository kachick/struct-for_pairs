# coding: us-ascii

require File.expand_path('../lib/struct/for_pairs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.description   = %q{Struct will be construct from key-value pairs.}
  gem.summary       = gem.description.dup
  gem.homepage      = 'http://kachick.github.com/struct-for_pairs'
  gem.license       = 'MIT'
  gem.name          = 'struct-for_pairs'
  gem.version       = Struct::For_Pairs::VERSION.dup

  gem.required_ruby_version = '>= 2.1'
  gem.add_development_dependency 'test-unit', '>= 3.2.1', '< 4.0'
  gem.add_development_dependency 'yard', '>= 0.9.5', '< 2.0'
  gem.add_development_dependency 'rake', '>= 11.3', '< 20'
  gem.add_development_dependency 'bundler', '>= 1.13.6', '< 2'

  if RUBY_ENGINE == 'rbx'
    gem.add_dependency 'rubysl', '~> 2.2'
  end

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
