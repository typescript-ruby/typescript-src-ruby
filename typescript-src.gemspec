# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typescript-src/version'

Gem::Specification.new do |spec|
  spec.name          = "typescript-src"
  spec.description   = %q{TypeScript source files}
  spec.summary       = %q{TypeScript source files}

  spec.authors       = ["KAWACHI Takashi"]
  spec.email         = ["tkawachi@gmail.com"]
  spec.homepage      = 'https://github.com/typescript-ruby/typescript-src-ruby'
  spec.license       = 'Apache 2.0 License'

  spec.files         = `git ls-files`.split($\)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_path  = ['lib']
  spec.version       = TypeScript::Src::VERSION

  spec.add_development_dependency 'rake'
end
