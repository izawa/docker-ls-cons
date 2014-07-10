# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker/ls/cons/version'

Gem::Specification.new do |spec|
  spec.name          = "docker-ls-cons"
  spec.version       = Docker::Ls::Cons::VERSION
  spec.authors       = ["いざわゆきみつ (Yukimitsu Izawa)"]
  spec.email         = ["izawa@izawa.org"]
  spec.summary       = %q{docker container list program}
  spec.description   = %q{docker container list program}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "docker-api", "~> 1.13"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
