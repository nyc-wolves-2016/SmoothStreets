class View

	def display_greeting
		puts "Hello welcome to my awesome program"
	end

	def display_prompt
		puts "Please enter your zip code or borough"
		gets.chomp
	end

	def display_output(output)
		puts output
	end


end