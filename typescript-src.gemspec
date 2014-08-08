# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typescript-src'

Gem::Specification.new do |gem|
  gem.authors       = ["KAWACHI Takashi"]
  gem.email         = ["tkawachi@gmail.com"]
  gem.description   = %q{TypeScript source}
  gem.summary       = %q{TypeScript source files}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.name          = "typescript-src"
  gem.version       = TypeScript::Src::VERSION + ".1"
end
