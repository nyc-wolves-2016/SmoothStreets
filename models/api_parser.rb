require 'json'
require 'open-uri'

class Parser
	attr_reader :incident_zip, :borough
	def initialize(args={})
		@incident_zip = args.fetch(:incident_zip) { nil }
		@borough = args.fetch(:borough) { nil }
	end

	BASE_URL = "https://data.cityofnewyork.us/resource/fed5-ydvq.json"

	QUERY_STRING = "https://data.cityofnewyork.us/resource/fed5-ydvq.json?$query=%20select%20incident_zip,status,borough,cross_street_1,street_name%20where%20incident_zip%20=%20%2210451%22%20and%20status%20=%20%22closed%22"

		def based_on_zip(incident_zip)
		end

		def based_on_borough(borough)
		end
	
		if self.incident_zip != nil
			based_on_zip(self.incident_zip)
		else
			based_on_borough(self.borough)
		end

	json_string_response = open(BASE_URL + QUERY_STRING).read

	puts json_string_response
	
	# ruby_hash_response

end

Parser.new