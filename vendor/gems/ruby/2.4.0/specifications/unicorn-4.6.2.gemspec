# -*- encoding: utf-8 -*-
# stub: unicorn 4.6.2 ruby lib
# stub: ext/unicorn_http/extconf.rb

Gem::Specification.new do |s|
  s.name = "unicorn".freeze
  s.version = "4.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Unicorn hackers".freeze]
  s.date = "2013-02-26"
  s.description = "\\Unicorn is an HTTP server for Rack applications designed to only serve\nfast clients on low-latency, high-bandwidth connections and take\nadvantage of features in Unix/Unix-like kernels.  Slow clients should\nonly be served by placing a reverse proxy capable of fully buffering\nboth the the request and response in between \\Unicorn and slow clients.".freeze
  s.email = "mongrel-unicorn@rubyforge.org".freeze
  s.executables = ["unicorn".freeze, "unicorn_rails".freeze]
  s.extensions = ["ext/unicorn_http/extconf.rb".freeze]
  s.extra_rdoc_files = ["FAQ".freeze, "README".freeze, "TUNING".freeze, "PHILOSOPHY".freeze, "HACKING".freeze, "DESIGN".freeze, "CONTRIBUTORS".freeze, "LICENSE".freeze, "SIGNALS".freeze, "KNOWN_ISSUES".freeze, "TODO".freeze, "NEWS".freeze, "ChangeLog".freeze, "LATEST".freeze, "lib/unicorn.rb".freeze, "lib/unicorn/configurator.rb".freeze, "lib/unicorn/http_server.rb".freeze, "lib/unicorn/preread_input.rb".freeze, "lib/unicorn/stream_input.rb".freeze, "lib/unicorn/tee_input.rb".freeze, "lib/unicorn/util.rb".freeze, "lib/unicorn/oob_gc.rb".freeze, "lib/unicorn/worker.rb".freeze, "ISSUES".freeze, "Sandbox".freeze, "Links".freeze, "Application_Timeouts".freeze]
  s.files = ["Application_Timeouts".freeze, "CONTRIBUTORS".freeze, "ChangeLog".freeze, "DESIGN".freeze, "FAQ".freeze, "HACKING".freeze, "ISSUES".freeze, "KNOWN_ISSUES".freeze, "LATEST".freeze, "LICENSE".freeze, "Links".freeze, "NEWS".freeze, "PHILOSOPHY".freeze, "README".freeze, "SIGNALS".freeze, "Sandbox".freeze, "TODO".freeze, "TUNING".freeze, "bin/unicorn".freeze, "bin/unicorn_rails".freeze, "ext/unicorn_http/extconf.rb".freeze, "lib/unicorn.rb".freeze, "lib/unicorn/configurator.rb".freeze, "lib/unicorn/http_server.rb".freeze, "lib/unicorn/oob_gc.rb".freeze, "lib/unicorn/preread_input.rb".freeze, "lib/unicorn/stream_input.rb".freeze, "lib/unicorn/tee_input.rb".freeze, "lib/unicorn/util.rb".freeze, "lib/unicorn/worker.rb".freeze]
  s.homepage = "http://unicorn.bogomips.org/".freeze
  s.licenses = ["GPLv2".freeze, "GPLv3".freeze, "Ruby 1.8".freeze]
  s.rdoc_options = ["-t".freeze, "Unicorn: Rack HTTP server for fast clients and Unix".freeze, "-W".freeze, "http://bogomips.org/unicorn.git/tree/%s".freeze]
  s.rubyforge_project = "mongrel".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Rack HTTP server for fast clients and Unix".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<kgio>.freeze, ["~> 2.6"])
      s.add_runtime_dependency(%q<raindrops>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<isolate>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<wrongdoc>.freeze, ["~> 1.6.1"])
    else
      s.add_dependency(%q<rack>.freeze, [">= 0"])
      s.add_dependency(%q<kgio>.freeze, ["~> 2.6"])
      s.add_dependency(%q<raindrops>.freeze, ["~> 0.7"])
      s.add_dependency(%q<isolate>.freeze, ["~> 3.2"])
      s.add_dependency(%q<wrongdoc>.freeze, ["~> 1.6.1"])
    end
  else
    s.add_dependency(%q<rack>.freeze, [">= 0"])
    s.add_dependency(%q<kgio>.freeze, ["~> 2.6"])
    s.add_dependency(%q<raindrops>.freeze, ["~> 0.7"])
    s.add_dependency(%q<isolate>.freeze, ["~> 3.2"])
    s.add_dependency(%q<wrongdoc>.freeze, ["~> 1.6.1"])
  end
end
