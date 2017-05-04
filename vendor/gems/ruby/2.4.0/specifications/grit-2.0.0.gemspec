# -*- encoding: utf-8 -*-
# stub: grit 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "grit".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Preston-Werner".freeze, "Scott Chacon".freeze]
  s.date = "2009-10-27"
  s.description = "Grit is a Ruby library for extracting information from a git repository in an object oriented manner.".freeze
  s.email = "tom@mojombo.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/mojombo/grit".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubyforge_project = "grit".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Grit is a Ruby library for extracting information from a git repository in an object oriented manner.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>.freeze, [">= 1.1.2"])
    else
      s.add_dependency(%q<mime-types>.freeze, [">= 1.15"])
      s.add_dependency(%q<diff-lcs>.freeze, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<mime-types>.freeze, [">= 1.15"])
    s.add_dependency(%q<diff-lcs>.freeze, [">= 1.1.2"])
  end
end
