class View

	def display_greeting
		puts "Hello welcome to my awesome program"
	end

	def display_prompt
		puts "Please enter your zip code or borough"
		gets.chomp
	end

	def display_output(output)
			puts "Streets to avoid:"
		output.each do |line|
			puts line["street_name"]
			puts line["cross_street_1"]
		end
	end


end