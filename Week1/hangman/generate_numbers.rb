class GenerateNumbers

	def initialize
		@num_hash = {}
		@index = 0
		@max_index = 0
	end

	def make_the_list
		ask_for_limit
		generate_numbers
	end

	def ask_for_limit
		puts "How many numbers should I generate?"
		@max_index = gets.chomp
	end

	def generate_numbers
		while @index.to_i <= @max_index.to_i
			hash_index_label = ":num_" + @index.to_s

			hash_value = (rand() * 10).to_i

			@num_hash[hash_index_label] = hash_value
			
		end

	end

end

new_number_list = GenerateAListOfNumbers.new 
new_number_list.make_the_list