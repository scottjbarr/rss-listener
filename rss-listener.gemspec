# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rss-listener}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Pearson"]
  s.date = %q{2009-06-29}
  s.email = %q{ampearson@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/rss-listener.rb",
     "rss-listener.gemspec",
     "spec/rss-listener_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/radamant/rss-listener}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{A Simple ruby RSS Listener that notifies when new items are found.}
  s.test_files = [
    "spec/rss-listener_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
