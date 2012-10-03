require 'rubygems'
 
require 'capybara'
require 'capybara/dsl'
 
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"
 
require "rspec/expectations"
class Google
  include Capybara::DSL
  include RSpec::Matchers
 
  def search_for(text)
    visit "/"
    # fill_in "q", :with => text
    # click_button "Search"
  end
 
  def ensure_results_contain(expected_text)
    page.should have_content(expected_text)
  end
end
 
google = Google.new
google.search_for("Matt Wynne")