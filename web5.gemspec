# frozen_string_literal: true

require_relative "lib/web5/version"

Gem::Specification.new do |spec|
  spec.name = "web5"
  spec.version = Web5::VERSION
  spec.authors = ["Thomas Carr"]
  spec.email = ["9591402+htcarr3@users.noreply.github.com"]

  spec.summary = "Web5 Ruby Library"
  spec.description = "Create, parse, and manage Decentralized Identifiers, Verifiable Credentials, and other related spec."
  spec.homepage = "https://github.com/htcarr3/web5.rb."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/htcarr3/web5.rb"
  spec.metadata["changelog_uri"] = "https://github.com/htcarr3/web5.rb/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
