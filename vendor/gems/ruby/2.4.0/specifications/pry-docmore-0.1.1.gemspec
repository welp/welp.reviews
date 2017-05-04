# -*- encoding: utf-8 -*-
# stub: pry-docmore 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-docmore".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["\u2608king".freeze, "ConradIrwin".freeze]
  s.date = "2013-04-18"
  s.description = "Enhanced show-doc (a.k.a ? command) for: $! $\" $$ $& $' $* $+ $, $-0 $-F $-I $-K $-W $-a $-d $-i $-l $-p $-v $-w $. $0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $: $; $< $= $> $? $@ $DEBUG $FILENAME $KCODE $LOADED_FEATURES $LOAD_PATH $PROGRAM_NAME $SAFE $VERBOSE $\\ $_ $` $stderr $stdin $stdout $~ $\u2044 BEGIN END __ENCODING__ __FILE__ __LINE__ alias and begin break case class def defined? do else elsif end ensure false for if in module next nil not or redo rescue retry return self super then true undef unless until when while yield ".freeze
  s.email = "pry-docmore@sharpsaw.org".freeze
  s.homepage = "https://github.com/rking/pry-docmore/wiki".freeze
  s.licenses = ["CC0".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Documents keywords and special vars. Currently uses the `,?` command, but soon plain `?`".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pry-doc>.freeze, [">= 0"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
  end
end
