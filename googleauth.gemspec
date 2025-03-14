# -*- ruby -*-
# encoding: utf-8

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "googleauth/version"

Gem::Specification.new do |gem|
  gem.name = "googleauth"
  gem.version = Google::Auth::VERSION

  gem.authors = ["Google LLC"]
  gem.email = ["googleapis-packages@google.com"]
  gem.summary = "Google Auth Library for Ruby"
  gem.description = "Implements simple authorization for accessing Google APIs, and provides support for " \
                    "Application Default Credentials."
  gem.homepage = "https://github.com/googleapis/google-auth-library-ruby"
  gem.license = "Apache-2.0"

  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md") + ["LICENSE", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.platform = Gem::Platform::RUBY
  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "faraday", ">= 1.0", "< 3.a"
  gem.add_dependency "google-cloud-env", "~> 2.2"
  gem.add_dependency "google-logging-utils", "~> 0.1"
  gem.add_dependency "jwt", ">= 1.4", "< 3.0"
  gem.add_dependency "multi_json", "~> 1.11"
  gem.add_dependency "os", ">= 0.9", "< 2.0"
  gem.add_dependency "signet", ">= 0.16", "< 2.a"

  if gem.respond_to? :metadata
    gem.metadata["changelog_uri"] = "https://github.com/googleapis/google-auth-library-ruby/blob/main/CHANGELOG.md"
    gem.metadata["source_code_uri"] = "https://github.com/googleapis/google-auth-library-ruby"
    gem.metadata["bug_tracker_uri"] = "https://github.com/googleapis/google-auth-library-ruby/issues"
  end
end
