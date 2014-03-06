# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_directory/version'

Gem::Specification.new do |spec|
  spec.name = 'datacom_active_directory'
  spec.version = ActiveDirectory::VERSION
  spec.authors       = ["Brad Murray"]
  spec.email         = ["wyaeld@gmail.com"]
  spec.date = %q{2013-10-22}
  spec.description = %q{ Datacom NZ fork of ActiveDirectory. Uses Net::LDAP to provide a means of accessing and modifying an Active Directory data store.  This is a fork of the activedirectory gem.}
  spec.email = %q{ajrkerr@gmail.com}
  spec.files         = `git ls-files`.split($/)
  
  spec.homepage = %q{http://github.com/datacom/active_directory}
  spec.require_paths = ["lib"]
  spec.rubygems_version = %q{1.6.2}
  spec.summary = %q{An interface library for accessing Microsoft's Active Directory.}

  if spec.respond_to? :specification_version then
    spec.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      spec.add_runtime_dependency(%q<net-ldap>, [">= 0.1.1"])
    else
      spec.add_dependency(%q<net-ldap>, [">= 0.1.1"])
    end
  else
    spec.add_dependency(%q<net-ldap>, [">= 0.1.1"])
  end
end

