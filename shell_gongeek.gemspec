# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shell_gongeek/version'

Gem::Specification.new do |spec|
  spec.name          = "shell_gongeek"
  spec.version       = ShellGongeek::VERSION
  spec.authors       = ["宫卫"]
  spec.email         = ["gongwei.gw@alibaba-inc.com"]

  spec.summary       = %q{gongeek的命令行工具.}
  spec.description   = %q{gongeek的命令行工具..}
  spec.homepage      = "http://gongwei.xyz"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  spec.executables   = ['sr']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
