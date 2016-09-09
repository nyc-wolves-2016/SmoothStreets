# require 'json'
# require 'open-uri'
require 'pry'

class Parser
	attr_accessor :query_string, :json_string_response
	attr_reader :incident_zip, :borough
	def initialize(args={})
		@incident_zip = args.fetch(:incident_zip)
		# @borough = args.fetch(:borough) { nil }
		@query_string = nil
		@json_string_response = nil

	end

	BASE_URL = "https://data.cityofnewyork.us/resource/fed5-ydvq.json"
	
		def based_on_zip(incident_zip)
			self.query_string = "?$query=%20select%20incident_zip,status,borough,cross_street_1,street_name%20where%20incident_zip%20=%20%22#{incident_zip}%22%20and%20status%20=%20%22open%22"

		end

		def based_on_borough(borough)
			self.query_string = "?$query=%20select%20incident_zip,status,borough,cross_street_1,street_name%20where%20borough%20=%20%22#{borough.upcase}%22%20and%20status%20=%20%22open%22"
		end
		def parse(zip_code)
			if self.incident_zip != nil
				based_on_zip(self.incident_zip)
			else
				based_on_borough(self.borough)
			end
			self.json_string_response = open(BASE_URL + self.query_string).read
		end
end
