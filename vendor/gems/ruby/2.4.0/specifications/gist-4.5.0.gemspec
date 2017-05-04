# -*- encoding: utf-8 -*-
# stub: gist 4.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gist".freeze
  s.version = "4.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Conrad Irwin".freeze, "\u2608king".freeze]
  s.date = "2015-11-19"
  s.description = "Provides a single function (Gist.gist) that uploads a gist.".freeze
  s.email = ["conrad.irwin@gmail.com".freeze, "rkingist@sharpsaw.org".freeze]
  s.executables = ["gist".freeze]
  s.files = ["bin/gist".freeze]
  s.homepage = "https://github.com/defunkt/gist".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Just allows you to upload gists".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<ronn>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["> 3"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<ronn>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["> 3"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<ronn>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["> 3"])
  end
end
