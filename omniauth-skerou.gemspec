# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-skerou/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth', 	'~> 1.0'
  gem.add_dependency 'oauth2', 		'~> 0.5.0'

  gem.authors       = ['Sush']
  gem.email         = ['engineering@skerou.com']
  gem.description   = %q{Omniauth adapter for Skerou platform.}
  gem.summary       = %q{Omniauth adapter for Skerou platform.}
  gem.homepage      = 'https://github.com/purchease/omniauth-skerou'

  gem.name          = 'omniauth-skerou'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Skerou::VERSION
end
