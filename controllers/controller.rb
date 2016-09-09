class Controller
	attr_reader :parser, :view, :input_checker

	def initialize(args={})
		@parser = Parser.new({incident_zip: "11214"})
		# @view = View.new
		# @input_checker = InputChecker # Module

		run
	end

	def run
		# Greet the user
		# Prompt with selection options
		
		# Until user input = "QUIT"
			# Take in user input
				# Probably downcase some things
				# Borough => upcase
				# InputChecker module(?)
					# To check if user input is good/bad
			# Pass to parser model
				# Parse
			# Set output of parse to a variable
			# View method to display output 'pretty'

		puts parser.parse
	end
end