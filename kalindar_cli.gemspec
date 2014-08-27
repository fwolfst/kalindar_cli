# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kalindar_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "kalindar_cli"
  spec.version       = KalindarCLI::VERSION
  spec.authors       = ["Felix Wolfsteller"]
  spec.email         = ["felix.wolfsteller@gmail.com"]
  spec.summary       = %q{Query ICS file via command line}
  spec.description   = %q{Simple and restricted command line interface to ics files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'kalindar', "~> 0.2.1"
  spec.add_dependency 'rainbow'
  spec.add_dependency 'terminal-table'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
