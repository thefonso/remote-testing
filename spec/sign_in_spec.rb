require_relative '../spec_helper'
  
describe "visit home page", :type => :request do
  it "visit page" do  
    visit "/"
	page.should have_content('google')
  end  
end  