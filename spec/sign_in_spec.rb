require_relative '../spec_helper'


describe "visit home page", :type => :request do
  
	it "visit page" do  
    	visit "/"
    	# fill_in "q", :with => 'BenchPrep'
    	click_link "Browse courses"
	
		page.should have_content('Browse BenchPrep Courses')
	end  
end  