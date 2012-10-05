  require_relative '../spec_helper'
  require_relative '../lib/user'


  describe "Existing User Log in Scenario", :type => :request do
    
    before :all do
      @user = FactoryGirl.build(:stuff)
    end


  	xit "should allow user to select login from top nav" do 
  		visit "/" 
      	within("#main-header")do
      		click_link 'Log In'	
  		end
  		
  		page.should have_content('Log in to your account')
  	end  

  	it "and fill in login form" do
  		visit "/login" 
      	within("#login-form")do
        		fill_in 'user-email', :with => @user.email
        		fill_in 'user-password', :with => @user.password
      	end

  	    #FIXME - the design crew will make this go away    	
      	within("#login-form") do 
       	 	click_link '#login-link' #this gives false failing test...geek query...why?
       	end

      	page.should have_content('Manage courses')
    	end
  end 