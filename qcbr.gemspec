# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qcbr'

Gem::Specification.new do |spec|
  spec.name          = "qcbr"
  spec.version       = Qcbr::VERSION
  spec.authors       = ["polamjag"]
  spec.email         = ["s@polamjag.info"]

  spec.summary       = %q{Qcbr is a small utility to send texts to Quartz Composer over UDP}
  spec.description   = %q{Qcbr is a small utility to send texts to Quartz Composer over UDP}
  spec.homepage      = "https://github.com/polamjag/qcbr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
