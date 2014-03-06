# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_directory/version'

Gem::Specification.new do |spec|
  spec.name = 'datacom_active_directory'
  spec.version = ActiveDirectory::VERSION
  spec.authors       = ["Brad Murray"]
  spec.email         = ["wyaeld@gmail.com"]
  spec.description = %q{ Datacom NZ fork of ActiveDirectory. Uses Net::LDAP to provide a means of accessing and modifying an Active Directory data store.  This is a fork of the activedirectory gem.}
  spec.summary = %q{An interface library for accessing Microsoft's Active Directory.}
  spec.homepage = %q{http://github.com/datacom/active_directory}
  
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "datacom-net-ldap", '0.5.0.datacom'
end

