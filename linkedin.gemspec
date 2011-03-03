# -*- encoding: utf-8 -*-
require File.expand_path('../lib/linked_in/version', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{linkedin}
  s.version = LinkedIn::VERSION::STRING

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wynn Netherland"]
  s.date = %q{2010-02-05}
  s.description = %q{Ruby wrapper for the LinkedIn API}
  s.email = %q{wynn.netherland@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files`.split("\n")
  s.homepage = %q{http://github.com/pengwynn/linkedin}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Ruby wrapper for the LinkedIn API}
  s.test_files = [
    "test/client_test.rb",
     "test/oauth_test.rb",
     "test/test_helper.rb",
     "examples/authenticate.rb",
     "examples/network.rb",
     "examples/profile.rb",
     "examples/status.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth>,         ["~> 0.4.0"])
      s.add_runtime_dependency(%q<hashie>,        ["~> 1.0.0"])
      s.add_runtime_dependency(%q<multi_json>,    ["~> 0.0.5"])
      s.add_development_dependency(%q<yajl-ruby>, ["~> 0.8.0"])
      s.add_development_dependency(%q<rspec>,     ["~> 2.4.0"])
      s.add_development_dependency(%q<rake>,      ["~> 0.8.7"])
      s.add_development_dependency(%q<webmock>,   ["~> 1.6.0"])
      s.add_development_dependency(%q<vcr>,       ["~> 1.6.0"])
    else
      s.add_dependency(%q<oauth>,       ["~> 0.4.0"])
      s.add_dependency(%q<hashie>,      ["~> 1.0.0"])
      s.add_dependency(%q<multi_json>,  ["~> 0.0.5"])
      s.add_dependency(%q<yajl-ruby>,   ["~> 0.8.0"])
      s.add_dependency(%q<rspec>,       ["~> 2.4.0"])
      s.add_dependency(%q<rake>,        ["~> 0.8.7"])
      s.add_dependency(%q<webmock>,     ["~> 1.6.0"])
      s.add_dependency(%q<vcr>,         ["~> 1.6.0"])
    end
  else
    s.add_dependency(%q<oauth>,       ["~> 0.4.0"])
    s.add_dependency(%q<hashie>,      ["~> 1.0.0"])
    s.add_dependency(%q<multi_json>,  ["~> 0.0.5"])
    s.add_dependency(%q<yajl-ruby>,   ["~> 0.8.0"])
    s.add_dependency(%q<rspec>,       ["~> 2.4.0"])
    s.add_dependency(%q<rake>,        ["~> 0.8.7"])
    s.add_dependency(%q<webmock>,     ["~> 1.6.0"])
    s.add_dependency(%q<vcr>,         ["~> 1.6.0"])
  end
end

