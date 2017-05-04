# -*- encoding: utf-8 -*-
# stub: api-pagination 4.5.2 ruby lib

Gem::Specification.new do |s|
  s.name = "api-pagination".freeze
  s.version = "4.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Celis".freeze]
  s.date = "2016-12-29"
  s.description = "Link header pagination for Rails and Grape APIs".freeze
  s.email = ["me@davidcel.is".freeze]
  s.homepage = "https://github.com/davidcelis/api-pagination".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Link header pagination for Rails and Grape APIs. Don't use the request body.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<grape>.freeze, [">= 0.10.0"])
      s.add_development_dependency(%q<railties>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<sequel>.freeze, [">= 4.9.0"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<grape>.freeze, [">= 0.10.0"])
      s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<sequel>.freeze, [">= 4.9.0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<grape>.freeze, [">= 0.10.0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<sequel>.freeze, [">= 4.9.0"])
  end
end
