require_relative '../spec_helper'


describe "Create new user from /purchases/subscription", :type => :request do
  
	it "should allow user to select login from top nav" do 
		visit "/purchases/subscription" 
    	
    		choose('web-plan') 
		
		# fill_in "q", :with => 'BenchPrep'
		page.should have_content('Subscribe to the Benchprep Library')
	end  
end 