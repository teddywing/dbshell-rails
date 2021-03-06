# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dbshell/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'dbshell-rails'
  spec.version       = DBShell::Rails::VERSION
  spec.authors       = ['Teddy Wing']
  spec.summary       = %q{A Rake task to painlessly open a database shell.}
  spec.description   = <<-EOF
    A Rake task to painlessly open a database shell. Launches the
    command line client of the current Rails environment's database and
    automatically connects to the right database.
  EOF
  spec.homepage      = 'https://github.com/teddywing/dbshell-rails'
  spec.license       = 'LGPL-3.0+'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
