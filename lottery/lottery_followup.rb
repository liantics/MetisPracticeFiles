#give instructions
#get names
# - store them in a list
# - until there is a blank
#
#Pick and Display winner

class Lottery

	def initialize
		@names = []
	end

  def play
    give instructions
    get names
    display_winner
  end

private

	def give_instructions
		puts "hi"
	end

	def get_names
	  loop do
	  	name = get_a_name
	    if name.empty?
	      break
	    else
	    	@names << name
	    end
	  end
	end

	def get_a_name
		print " > "
		gets.chomp
	end

	def display_winner
		if names.any?
			puts "The winner is: #{@names.sample}"
		else
			puts "There are no contestants."
	end

end
