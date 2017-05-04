# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pry-pretty-numeric/version"

Gem::Specification.new do |s|
  s.name        = "pry-pretty-numeric"
  s.version     = Pry::PrettyNumeric::VERSION
  s.authors     = ["Genki Takiuchi"]
  s.email       = ["genki@s21g.com"]
  s.homepage    = ""
  s.summary     = %q{Prints numeric with '_' between each 3 digits}
  s.description = %q{See summary}

  s.rubyforge_project = "pry-pretty-numeric"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "pry"
end
