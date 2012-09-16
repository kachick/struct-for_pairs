require File.expand_path('../lib/struct/for_pairs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.summary       = %q{Struct will be construct from key-value pairs.}
  gem.description   = %q{Struct will be construct from key-value pairs.}
  gem.homepage      = 'https://github.com/kachick/struct-for_pairs'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'struct-for_pairs'
  gem.require_paths = ['lib']
  gem.version       = Struct::For_Pairs::VERSION.dup # dup for https://github.com/rubygems/rubygems/commit/48f1d869510dcd325d6566df7d0147a086905380#-P0

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency 'yard', '~> 0.8'
end

