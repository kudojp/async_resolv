# frozen_string_literal: true

require_relative "lib/async_resolv/version"

Gem::Specification.new do |spec|
  spec.name = "async_resolv"
  spec.version = AsyncResolv::VERSION
  spec.authors = ["kudojp"]
  spec.email = ["heyjudejudejude1968@gmail.com"]

  spec.summary = "Fiber based asynchronous DNS resolver"
  spec.description = "This gem is a thin wrapper of resolv, and provides a fiber based asynchronous DNS resolver."
  spec.homepage = "https://github.com/kudojp/async_resolv"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "resolv", "~> 0.2", ">= 0.2.2"

  spec.add_development_dependency "pry-byebug"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
