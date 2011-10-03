# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'cucumber-rails-training-wheels'
  s.version     = '1.0.0'
  s.authors     = ["Aslak Hellesøy"]
  s.description = "Training Wheels for Cucumber-Rails"
  s.summary     = "#{s.name}-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = "http://cukes.info"

  s.add_runtime_dependency('cucumber-rails', '>= 1.1.1')

  s.add_development_dependency('rails', '>= 3.1.0')
  s.add_development_dependency('aruba', '>= 0.4.6')
  s.add_development_dependency('rspec', '>= 2.6.0')
  s.add_development_dependency('rspec-rails', '>= 2.6.1')
  s.add_development_dependency('database_cleaner', '>= 0.6.7')

  s.rubygems_version = ">= 1.6.1"
  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path     = "lib"
end
