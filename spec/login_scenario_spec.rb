require_relative '../spec_helper'

# login with test user...
# user => sample5@benchprep.com
# pass => sample5 

describe "Existing User Log in Scenario", :type => :request do
  
	xit "should allow user to select login from top nav" do 
		visit "/" 
    	within("#main-header")do	
    		click_link 'Log In'	
		end
		# fill_in "q", :with => 'BenchPrep'
		page.should have_content('Log in to your account')
	end  

	it "and fill in login form" do
		visit "/login" 
    	within("#login-form")do
      		fill_in 'user-email', :with => 'sample5@benchprep.com'
      		fill_in 'user-password', :with => 'sample5'
    	end

	#FIXME - the design crew will make this go away    	
    	within("#login-form") do 
     	 	click_link '#login-link' #this gives false failing test....why?
     	end

    	page.should have_content('Manage courses')
  	end
end 