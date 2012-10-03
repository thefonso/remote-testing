require 'rubygems'
require 'bundler/setup'
require 'capybara'
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

# Capybara configuration
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.benchprep.com"

require "rspec/expectations"

include Capybara::DSL
include RSpec::Matchers
include 