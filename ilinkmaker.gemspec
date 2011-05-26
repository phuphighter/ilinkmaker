# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ilinkmaker/version"

Gem::Specification.new do |s|
  s.name        = "ilinkmaker"
  s.version     = Ilinkmaker::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Johnny Khai Nguyen"]
  s.email       = ["johnnyn@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby wrapper for the iTunes Store API}
  s.description = %q{Ruby wrapper for the iTunes Store API - Search and Lookup}

  s.rubyforge_project = "ilinkmaker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
