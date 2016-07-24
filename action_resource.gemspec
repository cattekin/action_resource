# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'action_resource/version'

Gem::Specification.new do |spec|
  spec.name          = "action_resource"
  spec.version       = ActionResource::VERSION
  spec.authors       = ["Edward Tippett"]
  spec.email         = ["edward.tippett@gmail.com"]

  spec.summary       = %q{Decouple your form and presentation code}
  spec.description   = %q{Presentation layer for easy creation of Forms, derived fields, formatted values, with simple interoperability with Rails form and URL helpers.}
  spec.homepage      = "https://github.com/cattekin/action_resource"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
