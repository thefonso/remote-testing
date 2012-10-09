require	'open-uri'
require 'pp' #pretty printed output...wow
require 'net/http'
require 'json' # oh this is freaky...without this line json pulls a false error...it's all over the net this week-oct 8th

# first grab the data
class Jsonplay

	attr_reader :empls


	# TODO create seperate methods for different user personas
	# A web and mobile user with a single lifetime access to one course.
	def default
		uri = URI("http://staging.benchprep.com/api/v1/test/fixtures.json")	

		res = Net::HTTP.post_form(uri, 'email' => 'integration-tester+1@benchprep.com')
		# write this output to a file
		output = File.open( "spec/fixtures/default_persona.json",'w' ){|f| 
			f.flock(File::LOCK_EX)
			f.write(res.body)
		}

		# Now parse this string as json
		json = File.read('spec/fixtures/default_persona.json')
		empls = JSON.parse(json)

		return empls #pretty printed output
	end

	# a 	subscriber persona for a user with web and mobile devices
	def suscriber_wm
		uri = URI("http://staging.benchprep.com/api/v1/test/fixtures.json")	

		res = Net::HTTP.post_form(uri, 'email' => 'integration-tester+1@benchprep.com&enrollments_persona=subscriber&devices_persona=web_and_mobile')
		# write this output to a file
		output = File.open( "spec/fixtures/sp_wm_persona.json",'w' ){|f| 
			f.flock(File::LOCK_EX)
			f.write(res.body)
		}

		# Now parse this string as json
		json = File.read('spec/fixtures/sp_wm_persona.json')
		empls = JSON.parse(json)

		return empls #pretty printed output
	end
end