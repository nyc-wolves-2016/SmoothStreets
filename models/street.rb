class Street
	attr_reader :street_name, :borough, :incident_zip, :cross_street

	def initialize(args={})
		@street_name = args["street_name", nil]
		@borough = args["borough", nil]
		@incident_zip = args["incident_zip", nil]
		@cross_street = args["cross_street_1", nil]
	end

end