require 'bundler/setup'
require 'rspec/expectations'
require 'aruba/cucumber'

Before do
  @aruba_timeout_seconds = 120 # A long time needed some times
  unset_bundler_env_vars
end
