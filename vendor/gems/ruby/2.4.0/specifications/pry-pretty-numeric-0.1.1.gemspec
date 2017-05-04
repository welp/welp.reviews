# -*- encoding: utf-8 -*-
# stub: pry-pretty-numeric 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-pretty-numeric".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Genki Takiuchi".freeze]
  s.date = "2012-01-24"
  s.description = "See summary".freeze
  s.email = ["genki@s21g.com".freeze]
  s.homepage = "".freeze
  s.rubyforge_project = "pry-pretty-numeric".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Prints numeric with '_' between each 3 digits".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
