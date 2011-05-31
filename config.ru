ENV["TZ"] = "America/Phoenix"
ENV["RACK_ENV"] = "development" unless ENV["RACK_ENV"]

begin
  # Require the preresolved locked set of gems.
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  # Fallback on doing the resolve at runtime.
  require "rubygems"
  require "bundler"
  Bundler.setup
end

require File.dirname(__FILE__) + "/hello_jruby"
run HelloJruby::Application
