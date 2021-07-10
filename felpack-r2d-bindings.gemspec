# frozen_string_literal: true

require_relative "lib/felpack/r2d/bindings/version"

Gem::Specification.new do |spec|
  spec.name          = "felpack-r2d-bindings"
  spec.version       = Felpack::R2d::Bindings::VERSION
  spec.authors       = ["_Tradam"]
  spec.email         = ["felflame@tradam.dev"]

  spec.summary       = "Bindings for FelFlame that make coding with Ruby2D easier"
  #spec.description   = "TODO: Write a longer description or delete this line."
  spec.homepage      = "https://felpack-r2d-bindings.tradam.fyi"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/realtradam/FelFlame-r2d-bindings"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency 'rubocop', '~> 1.7'
  spec.add_development_dependency 'yard', '~> 0.9.26'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'
  spec.add_development_dependency 'simplecov-console', '~> 0.9.1'
  spec.add_development_dependency 'simplecov_json_formatter', '~> 0.1.3'
  spec.add_development_dependency 'redcarpet', '~> 3.5', '>= 3.5.1'

  spec.add_dependency 'felflame', '~> 2.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
