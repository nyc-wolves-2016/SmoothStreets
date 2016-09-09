module InputChecker

	def self.mass_check(input)
		if self.check_for_quit(input)
			false
		else 
			{:incident_zip => input}
		end
	end	

	def self.check_for_quit(input)
		input.downcase == "quit"
	end
end

	# def self.check_for_zip(input)
	# 	input.dowcase.match(/\b\d{5}/)
	# end

	# def self.check
# case input 
# when regexp digits 5 digits 
# 	return that 
# when "bronx"	 
# 	return "Bronx"
# when 
# else 
# 	method for incorrect input 

# 		puts "please enter a 5 digit zip or one of Boroughs"
# end		

	# def check_for_quit
		# Checks if the user's input is 'quit'

	# 


