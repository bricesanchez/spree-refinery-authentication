# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name          = "spree-refinerycms-authentication"
  s.version       = "3.1.0"
  s.authors       = ["Philip Arndt", "Brice Sanchez", "Adrian Macneil"]
  s.description   = "Configure Refinery to use Spree for authentication"
  s.summary       = "Spree has a pluggable authentication system. This s will tell Refinery to use Spree user model and authentication."
  s.homepage      = "https://github.com/bricesanchez/spree-refinery-authentication"

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'spree_core', '~> 3.0'
  s.add_runtime_dependency 'refinerycms-core', ['>= 3.0.6', '< 5.0']
  s.add_runtime_dependency 'zilch-authorisation', '>= 0.0.1'
  s.add_runtime_dependency 'decorators', '~> 2.0'
  s.add_runtime_dependency 'deface', '~> 1.0'
end
