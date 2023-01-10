# frozen_string_literal: true

require_relative "lib/mimik/version"

Gem::Specification.new do |spec|
  spec.name = "mimik"
  spec.version = Mimik::VERSION
  spec.authors = ["Hiram Habib"]
  spec.summary = "A gem to generate random data"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7")
end
