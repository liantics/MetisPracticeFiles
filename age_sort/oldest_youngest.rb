

#Enter people's names and ages followed by an empty line:
#Jim 42
#Sally 29

#ask for name age
#get names
# get a name
# split name from age
#add to array
#sort by age

class Oldest_Youngest

	def initialize()
		@name_exists = true
		@name = String.new
		@list = Array.new
		@slpit_list = Array.new(@list.length)

	end #initialize

	def play
		ask_for_names
		while @name_exists
			break if !@name_exists
			get_names
		end
		show_olest_youngest
	end #play

	def ask_for_names
		puts
		puts "Enter a name and age on each line, like this: Joe Smith 42. When you're done, hit enter without entering any text. "
	end #ask_for_names

	def get_names
		if @name_exists
			get_a_name
			@list.push(@name)
		end
	end #get_names

	def show_oldest_youngest
		split_string(@list)

	end

	def split_string(name)
	end

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
		winner = @list.sample
		puts "And the winner is: #{winner}!"
	end
end #class

lottery2 = Lottery2.new
lottery2.play