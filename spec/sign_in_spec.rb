require_relative '../spec_helper'



describe "visit home page", :type => :request do
	include Capybara::DSL
	include RSpec::Matchers

  
	it "visit page" do  
    	visit "/"
    	fill_in "q", :with => 'BenchPrep'
    	click_button "gbqfb"
	
		page.should have_content('Test Prep - Standardized Tests for LSAT')
	end  
end  