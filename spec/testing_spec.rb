require_relative '../spec_helper'
 

class Google
  include Capybara::DSL
  include RSpec::Matchers
 
  def search_for(text)
    visit "/"
    fill_in "q", :with => text
    click_button "Google Search"
  end
 
  def ensure_results_contain(expected_text)
    page.should have_content(expected_text)
  end
end
 
google = Google.new
google.search_for("BenchPrep.com")
google.ensure_results_contain("Test Prep - Standardized Tests for")