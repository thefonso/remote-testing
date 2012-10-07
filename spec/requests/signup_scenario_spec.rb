require_relative '../../spec_helper'

describe "Create new user " do

  describe "the page /purchases/subscription", :type => :request do
  Capybara.default_wait_time = 4
    # before :each do
    #   # @user = FactoryGirl.build(:user)     
    # end
 
  	it "should allow user to choose web-plan" do 
      visit "/purchases/subscription" #TODO-create a fake of the model used for this form
      choose('web-plan') 
  	
    # "and fill out the form"
      fill_in "create-account-first-name", :with => 'alfonso'
      fill_in "create-account-last-name",  :with => 'rush'
  		fill_in "create-account-email", :with => 'alfonso@benchprep.com'
      fill_in "create-account-password", :with => 'benchprep'
      fill_in "create-account-password-confirm", :with => 'benchprep'
      
     # "and click submit"
      # click_link '#create-account-link'
      
      page.has_content?('Create Account')
  		
  	end  
  end 
end