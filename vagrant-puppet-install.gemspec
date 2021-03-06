# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-puppet-install/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-puppet-install"
  spec.version       = VagrantPlugins::PuppetInstall::VERSION
  spec.authors       = ["Seth Chisamore", "Patrick Connolly"]
  spec.email         = ["schisamo@opscode.com", "patrick@myplanetdigital.com"]
  spec.description   = %q{A Vagrant plugin that ensures the desired version of Puppet is installed via the Puppet Labs package repos.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/patcon/vagrant-puppet-install"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
