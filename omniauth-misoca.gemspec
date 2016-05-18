# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/misoca/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-misoca"
  spec.version       = Omniauth::Misoca::VERSION
  spec.authors       = ["Hirofumi Wakasugi"]
  spec.email         = ["baenej@gmail.com"]

  spec.summary       = %q{OmniAuth strategy for Misoca.}
  spec.description   = %q{This is the OmniAuth strategy for authenticating to Misoca. To use it, you'll need to sign up for an OAuth2 Application ID and Secret on the Misoca API Page.}
  spec.homepage      = "https://github.com/5t111111/omniauth-misoca"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth', '>= 1.3.1'
  spec.add_runtime_dependency 'omniauth-oauth2', '>= 1.4.0'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
