$:.push File.expand_path("../lib", __FILE__)
require "livescript/rails/version"

Gem::Specification.new do |s|
  s.name        = "livescript-rails"
  s.version     = LiveScript::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Victor Hugo Borja, Cameron Taylor"]
  s.email       = ["camerontaylor@gmail.com"]
  s.homepage    = "https://github.com/camerontaylor/livescript-rails"
  s.summary     = %q{LiveScript adapter for the Rails asset pipeline.}
  s.description = %q{LiveScript adapter for the Rails asset pipeline.}

  s.add_runtime_dependency 'execjs'
  s.add_runtime_dependency 'livescript'
  s.add_runtime_dependency 'railties'
  s.add_runtime_dependency 'tilt'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
