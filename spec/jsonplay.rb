# require	'open-uri'
require 'pp' #pretty printed output...wow
require 'net/http'

# THIS WORKS
# json = open("http://search.twitter.com/search.json?q=%40twitterapi").read
# json = File.read('sp_wm_persona.json')

# THIS DOES NOT WORK
# json = open("http://staging2.benchprep.com/api/v1/test/fixtures.json?email=integration-tester+1@benchprep.com").read


# empls = JSON.parse(json)

# pp empls


   uri = URI("http://staging2.benchprep.com/api/v1/test/fixtures.json")
   
   res = Net::HTTP.post_form(uri, 'email' => 'integration-tester+1@benchprep.com')

   puts res.body
