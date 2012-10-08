# require	'open-uri'
require 'pp' #pretty printed output...wow
require 'net/http'
require 'json' # oh this is freaky...without this line json pulls a false error...it's all over the net this week-oct 8th

# first grab the data
class jsonplay

	attr_reader :empls

	def initialize
		uri = URI("http://staging.benchprep.com/api/v1/test/fixtures.json")

		res = Net::HTTP.post_form(uri, 'email' => 'integration-tester+1@benchprep.com')

		# write this output to a file
		output = File.open( "fixtures/sp_wm_persona.json",'w' ){|f| 
			f.flock(File::LOCK_EX)
			f.write(res.body)
		}


		# Now parse this string as json
		json = File.read('fixtures/sp_wm_persona.json')
		empls = JSON.parse(json)

		return @empls #pretty printed output
	end
end