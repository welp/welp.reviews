# -*- encoding: utf-8 -*-
# stub: pry-highlight 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-highlight".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Conrad Irwin".freeze]
  s.date = "2014-08-23"
  s.description = "Uses JSON, Nokogiri and CodeRay to highlight and prettify JSON, XML, HTML, Ruby and anything else CodeRay supports!".freeze
  s.email = "conrad.irwin@gmail.com".freeze
  s.homepage = "http://github.com/ConradIrwin/pry-highlight".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Adds a >> command to pretty-print Strings".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<coderay>.freeze, [">= 0"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<coderay>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<coderay>.freeze, [">= 0"])
  end
end
