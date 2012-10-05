require_relative '../spec_helper'


describe "Create new user from /purchases/subscription", :type => :request do

  # before :all do
  #   @user = FactoryGirl.build(:user)
  # end

  # after :all do
  #   user.destroy
  # end
  
	it "should allow user to select login from top nav" do 
		visit "/purchases/subscription" 
    	
    		choose('web-plan') 
		
		# fill_in "q", :with => 'BenchPrep'
		page.should have_content('Subscribe to the Benchprep Library')
	end  
end 