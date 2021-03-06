# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maybe_so/version'

Gem::Specification.new do |spec|
  spec.name          = "maybe_so"
  spec.version       = MaybeSo::VERSION
  spec.authors       = ["James Miller", "Tanner Mares"]
  spec.email         = ["bensie@gmail.com", "tannermares@gmail.com"]
  spec.summary       = %q{Ruby boolean type casting}
  spec.description   = %q{Ruby boolean type casting}
  spec.homepage      = "https://github.com/ministrycentered/maybe_so"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10'
  spec.add_development_dependency "rspec", ">= 3.0.0", "< 4"
  spec.add_development_dependency "activemodel", ">= 3.2.0", "< 5"
end
