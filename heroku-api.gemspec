# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "heroku/api/version"

Gem::Specification.new do |s|
  s.name        = "heroku-api"
  s.version     = Heroku::API::VERSION
  s.authors     = ["geemus (Wesley Beary)", "Pedro Belo"]
  s.email       = ["wesley@heroku.com", "pedro@heroku.com"]
  s.homepage    = "http://github.com/heroku/heroku.rb"
  s.license     = 'MIT'
  s.summary     = %q{Ruby Client for the Heroku API}
  s.description = %q{Ruby Client for the Heroku API}
  s.post_install_message = "
‼️	The heroku-api gem will not work.
‼️	You must instead use the platform-api gem.
‼️	The heroku-api gem communicated with the Legacy API which has been disabled.
‼️	https://devcenter.heroku.com/changelog-items/118"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'excon', '~>0.45'
  s.add_runtime_dependency 'multi_json', '~>1.8'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
end
