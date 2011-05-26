# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ilinkmaker}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Johnny Khai Nguyen"]
  s.date = %q{2011-05-26}
  s.description = %q{Ruby wrapper for the iTunes Store Search API}
  s.email = %q{johnnyn@gmail.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "README.md",
    "Rakefile",
    "VERSION",
    "ilinkmaker.gemspec",
    "lib/ilinkmaker.rb",
    "lib/ilinkmaker/client.rb",
    "pkg/ilinkmaker-0.0.0.gem",
    "test/fixtures/entity_lookup.json",
    "test/fixtures/lookup.json",
    "test/fixtures/search.json",
    "test/ilinkmaker_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/phuphighter/ilinkmaker}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby wrapper for the iTunes Store Search API}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.5.0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.5.0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.5.0"])
  end
end

