require 'rubygems'
require 'bundler/setup'
require 'capybara'
require 'rspec'
require 'capybara/rspec'
require 'json'
# require 'webmock/rspec'

require 'capybara/dsl'
# Capybara configuration
Capybara.default_driver = :selenium
Capybara.app_host = "https://staging.benchprep.com"

require 'factory_girl'
# give me ma stuff
FactoryGirl.find_definitions

require "rspec/expectations"

include Capybara::DSL
include RSpec::Matchers