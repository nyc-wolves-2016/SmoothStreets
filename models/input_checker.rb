module InputChecker

	def mass_check(input)
		if self.check_for_quit(input)
			0
		elsif self.check_for_zip(input)
			1
		# elsif self.check_for_borough(input)
		# 	2
		else 
			3
		end
	end	

	def self.check_for_quit(input)
		input.downcase == "quit"
	end

	def self.check_for_zip(input)
		input.dowcase.match(/\b\d{5}/)
	end

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


end