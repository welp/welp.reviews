# -*- encoding: utf-8 -*-
# stub: graphql 1.5.10 ruby lib

Gem::Specification.new do |s|
  s.name = "graphql".freeze
  s.version = "1.5.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Robert Mosolgo".freeze]
  s.date = "2017-04-25"
  s.description = "A plain-Ruby implementation of GraphQL.".freeze
  s.email = ["rdmosolgo@gmail.com".freeze]
  s.homepage = "http://github.com/rmosolgo/graphql-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.8".freeze
  s.summary = "A GraphQL language and runtime for Ruby".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<benchmark-ips>.freeze, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<guard>.freeze, ["~> 2.12"])
      s.add_development_dependency(%q<guard-bundler>.freeze, ["~> 2.1"])
      s.add_development_dependency(%q<guard-minitest>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<guard-rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard-rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<listen>.freeze, ["~> 3.0.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
      s.add_development_dependency(%q<minitest-focus>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<racc>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.45"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<sequel>.freeze, [">= 0"])
      s.add_development_dependency(%q<github-pages>.freeze, [">= 0"])
    else
      s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_dependency(%q<guard>.freeze, ["~> 2.12"])
      s.add_dependency(%q<guard-bundler>.freeze, ["~> 2.1"])
      s.add_dependency(%q<guard-minitest>.freeze, ["~> 2.4"])
      s.add_dependency(%q<guard-rake>.freeze, [">= 0"])
      s.add_dependency(%q<guard-rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<listen>.freeze, ["~> 3.0.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
      s.add_dependency(%q<minitest-focus>.freeze, ["~> 1.1"])
      s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.0"])
      s.add_dependency(%q<racc>.freeze, ["~> 1.4"])
      s.add_dependency(%q<rails>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 11"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.45"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<sequel>.freeze, [">= 0"])
      s.add_dependency(%q<github-pages>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    s.add_dependency(%q<guard>.freeze, ["~> 2.12"])
    s.add_dependency(%q<guard-bundler>.freeze, ["~> 2.1"])
    s.add_dependency(%q<guard-minitest>.freeze, ["~> 2.4"])
    s.add_dependency(%q<guard-rake>.freeze, [">= 0"])
    s.add_dependency(%q<guard-rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<listen>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
    s.add_dependency(%q<minitest-focus>.freeze, ["~> 1.1"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.0"])
    s.add_dependency(%q<racc>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 11"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.45"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<sequel>.freeze, [">= 0"])
    s.add_dependency(%q<github-pages>.freeze, [">= 0"])
  end
end
