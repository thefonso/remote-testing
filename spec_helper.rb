require 'rubygems'
require 'bundler/setup'
require 'capybara'
require 'rspec'
require 'capybara/rspec'
# require 'webmock'
require 'json'

require 'capybara/dsl'
# Capybara configuration
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.benchprep.com"

require 'factory_girl'
# give me ma stuff
FactoryGirl.find_definitions

require "rspec/expectations"

include Capybara::DSL
include RSpec::Matchers
# include WebMock::API