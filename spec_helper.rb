require 'rubygems'
require 'bundler/setup'
# require 'ruby-debug' # do I need this guy?
require 'capybara'
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

# Capybara configuration
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"

require "rspec/expectations"