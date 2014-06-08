# ask for names
#Enter in a list of names followed by a blank line to start the lottery
#	get a name
# check name
#	if name is not empty, ask for another name

# if name is empty choose a winner
# show winner's name
class Lottery2

	def initialize()
		@name_exists = true
		@name = String.new
		@names = Array.new

	end #initialize

	def play
		ask_for_names
		while @name_exists
			break if !@name_exists
			get_names
		end
		show_winner
	end #play

	def ask_for_names
		puts
		puts "Enter contestant names. When you're done, hit enter without entering any text. "
	end #ask_for_names

	def get_names
		if @name_exists
			get_a_name
			@names.push(@name)
		end
	end #get_names

	def get_a_name
		print " > "
		@name = gets.chomp
		check_name
	end #get_a_name

	def check_name
		if @name.empty?
			@name_exists = false
		end #if
	end #check_name

	def show_winner
		winner = @names.sample
		puts "And the winner is: #{winner}!"
	end
end #class

lottery2 = Lottery2.new
lottery2.play
