# Typescript::Src

TypeScript source files in a gem.

## Installation

Add this line to your application's `Gemfile`:

    gem 'typescript-src'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install typescript-src

## Usage

```ruby
require 'typescript-src'

p TypeScript::Src.tsc_path # => #<Pathname:/path/to/tsc>
p TypeScript::Src.js_path  # => #<Pathname:/path/to/typescript.js>
p TypeScript::Src.version  # => "1.0.1"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
