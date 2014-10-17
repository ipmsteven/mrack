# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mrack/version'

Gem::Specification.new do |spec|
  spec.name          = "mrack"
  spec.version       = Mrack::VERSION
  spec.authors       = ["yunlei"]
  spec.email         = ["yunlei.liu@appfolio.com"]
  spec.summary       = %q{micro rack}
  spec.description   = %q{This is micro rack}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "thin"
end
