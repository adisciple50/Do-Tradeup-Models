# frozen_string_literal: true

require "./lib/Tradeup/Database/Models/version"

Gem::Specification.new do |spec|
  spec.name          = "Do-Tradeup-Models"
  spec.version       = Tradeup::Database::Models::VERSION
  spec.authors       = ["Jason Crockett"]
  spec.email         = ["talktotradeup@outlook.com"]

  spec.summary       = "Mongoid Models for the arbitrage site tradeup.info"
  spec.description   = "These mongoid Models our open source for anyone to use"
  spec.homepage      = "https://github.com/adisciple50/Do-Tradeup-Models"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The Adds everything in root
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir.children(Dir.pwd) # adds everything in root at least.
  end
  spec.files = spec.files.delete('.idea')
  spec.files = spec.files + ['lib/Tradeup/Database/Models.rb','lib/Tradeup/Database/Models/version.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency 'mongoid','~> 7.0'
end
