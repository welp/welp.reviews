# -*- encoding: utf-8 -*-
# stub: pry-suite 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-suite".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Celis".freeze]
  s.date = "2014-10-28"
  s.description = "pry-suite is designed to set up a nice Pry ecosystem out of the box. You are given Pry with access to a suite of great plugins. This list is currently comprised of pry-byebug (or pry-debugger for Ruby 1.9.x), pry-doc, pry-docmore, pry-git, pry-highlight, pry-macro, pry-pretty-numeric, pry-rescue and pry-stack_explorer. Finally, the gist gem is also included to enable Pry's gist command.\n".freeze
  s.email = ["me@davidcel.is".freeze]
  s.homepage = "https://github.com/davidcelis/pry-suite".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.8".freeze
  s.summary = "A metagem to install Pry with many useful plugins.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-doc>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-docmore>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-git>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-highlight>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-macro>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-pretty-numeric>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-rescue>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<gist>.freeze, [">= 0"])
    else
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
      s.add_dependency(%q<pry-docmore>.freeze, [">= 0"])
      s.add_dependency(%q<pry-git>.freeze, [">= 0"])
      s.add_dependency(%q<pry-highlight>.freeze, [">= 0"])
      s.add_dependency(%q<pry-macro>.freeze, [">= 0"])
      s.add_dependency(%q<pry-pretty-numeric>.freeze, [">= 0"])
      s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
      s.add_dependency(%q<gist>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
    s.add_dependency(%q<pry-docmore>.freeze, [">= 0"])
    s.add_dependency(%q<pry-git>.freeze, [">= 0"])
    s.add_dependency(%q<pry-highlight>.freeze, [">= 0"])
    s.add_dependency(%q<pry-macro>.freeze, [">= 0"])
    s.add_dependency(%q<pry-pretty-numeric>.freeze, [">= 0"])
    s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
    s.add_dependency(%q<gist>.freeze, [">= 0"])
  end
end
