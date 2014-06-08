#Enter in a list of names followed by a blank line to start the lottery
#   > Richard Feynman
#    > Isaac Newton
#   > Albert Einstein
#   > Paul Dirac
#    >
#   Richard Feynman wins!
# create a class
# make an array
# collect the user input
# add each name to the array
# select a random card (maybe shuffle?)
# print the winner

#User Actions
# Play
# enter a name

class Lottery
	

	def initialize
		@name_blank = false
		@list = []
	end

	def play
		get_names
		show_winner
	end

	def show_winner
		if @name_blank 
			puts @list.sample
		end
	end


	def get_names
		puts "Enter a list of names, followed by a blank line to create the lottery"
		print ">"
		name = gets.chomp
		check_for_blank(name)

		while !@name_blank
				get_names
		end

			@list.push(name)	
	end

	def check_for_blank(name)
		if name.empty?
				@name_blank = true
		end
	end

end

lottery = Lottery.new 
lottery.play
