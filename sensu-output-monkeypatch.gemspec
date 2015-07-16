# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sensu-output-monkeypatch/version'

Gem::Specification.new do |spec|
  spec.name          = "sensu-output-monkeypatch"
  spec.version       = SensuOutputMonkeypatch::VERSION
  spec.authors       = ["Rob Wilson"]
  spec.email         = ["roobert@gmail.com"]

  spec.summary       = %q{Simplify sensu check output}
  spec.description   = %q{Monkeypatch Sensu::Plugin::Check::CLI#output to simplify check output}
  spec.homepage      = "http://github.com/roobert/sensu-output-monkeypatch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'sensu-plugin', "~> 1.2"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
