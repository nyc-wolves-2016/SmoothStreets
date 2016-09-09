class Street
	attr_reader :street_name, :borough, :incident_zip, :cross_street

	def initialize(args={})
		@street_name = args.fetch("street_name")
		@borough = args.fetch("borough")
		@incident_zip = args.fetch("incident_zip")
		@cross_street = args.fetch("cross_street_1")
	end

end