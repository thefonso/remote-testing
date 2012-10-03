A tool for running Rspec and Cabybara outside of Rails.

At prompt run 'bundle install'

Go into spec_helper and place url in this line....

Capybara.app_host = "http://www.someplace.com"

write your specs in the spec folder. then run rspec spec at command prompt