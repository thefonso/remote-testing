require_relative '../spec_helper'


describe "Existing User Log in Scenarios", :type => :request do
  
	it "User can login from main page" do 
		visit "/" 
    	within("#main-header")do	
    		click_link 'Log In'	
		end
		# fill_in "q", :with => 'BenchPrep'
		page.should have_content('Log in to your account')
	end  
end 