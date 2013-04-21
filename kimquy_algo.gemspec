# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kimquy_algo/version'

Gem::Specification.new do |spec|
  spec.name          = "kimquy_algo"
  spec.version       = KimquyAlgo::VERSION
  spec.authors       = ["long nguyen"]
  spec.email         = ["nguy1461@vandals.uidaho.edu"]
  spec.description   = %q{Algorithm and data structure}
  spec.summary       = %q{Algorithm library}
  spec.homepage      = "https://github.com/kimquy/kimquy_algo"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
