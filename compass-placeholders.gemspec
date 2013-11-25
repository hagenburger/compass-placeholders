# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "compass-placeholders/version"

Gem::Specification.new do |s|
  s.name        = "compass-placeholders"
  s.version     = CompassPlaceholders::VERSION
  s.authors     = ["Nico Hagenburger"]
  s.email       = ["nico@hagenburger.net"]
  s.homepage    = ""
  s.summary     = %q{@extendable %placeholders for common CSS3 code.}
  s.description = %q{@extendable %placeholders for common CSS3 code provided by Compass. For example use `@extend %hide-text;` instead of `@include hide-text;` to save file size and speed up rendering.}

  s.rubyforge_project = "compass-placeholders"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "compass"

  s.add_development_dependency "rake"
end
