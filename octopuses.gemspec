# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopuses/version'

Gem::Specification.new do |spec|
  spec.name          = "octopuses"
  spec.version       = Octopuses::VERSION
  spec.authors       = ["Hidde-Jan Jongsma"]
  spec.email         = ["me@hidde-jan.nl"]
  spec.summary       = "Fix the pluralization of octopus."
  spec.description   = "Everyone knows the proper plural of octopus is octopuses, not octopi."
  spec.homepage      = "https://github.com/hidde-jan/octopuses"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", [">= 3.2"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
