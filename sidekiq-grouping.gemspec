# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sidekiq/grouping/version"

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-grouping"
  spec.version       = Sidekiq::Grouping::VERSION
  spec.authors       = ["Victor Sokolov"]
  spec.email         = ["gzigzigzeo@gmail.com"]
  spec.summary       = <<~SUMMARY
    Allows identical sidekiq jobs to be processed with a single background call
  SUMMARY
  spec.homepage      = "http://github.com/gzigzigzeo/sidekiq-grouping"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "activesupport"
  spec.add_dependency "concurrent-ruby"
  spec.add_dependency "sidekiq", ">= 3.4.2"
  spec.metadata["rubygems_mfa_required"] = "true"
end
