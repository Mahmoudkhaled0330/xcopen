# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xopen/version'

Gem::Specification.new do |spec|
  spec.name          = "xopen"
  spec.version       = Xopen::VERSION
  spec.authors       = ["Madson Cardoso"]
  spec.email         = ["madsonmac@gmail.com"]
  spec.summary       = "Opens Xcode workspace or project on the current folder."
  spec.description   = "Script that opens the first .xcworkspace found on the current folder, or the first .xcodeproj found (if no workspace was found)."
  spec.homepage      = "http://github.com/madson/xopen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

