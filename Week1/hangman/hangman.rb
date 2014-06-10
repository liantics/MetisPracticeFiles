# Fill a file with words, one per line
# Player gets up to as many turns as there are words in the file
# For each turn
# 	get the word
# 	find out how many letters are in the word
# 		create a set of "blanks" - one for each letter
# 		create a holder for the guesses made so far
# 	ask for a guess
# 		record the guess
# 	  if the guess is correct
# 			put the correct guess into each matching blank
# 		if the guess is wrong
# 			tell player it's wrong
# 	show results


class Hangman
	MAX_BAD_GUESSES = 6
	
	def initialize(filename)
		@filename = filename
		@letters = []
		@matching_guess_list = []
		@max_turns = 0
		@this_turn = 1
		@bad_guesses = 0
		@current_guess_num = 1
		@letters_remain = true

	end

	# **************** play method ****************
	# runs the program
		# gets a word
		# asks user for a guess
		# records the guess
		# compares the guess to the word
		# shows the results
	# **************** play method ****************

	def play
		
		@max_turns = get_num_words_in_file(@filename) - 1
		while @this_turn <= @max_turns do
			
			get_word = read_a_word(@filename, @this_turn)
			
			fill_blanks_for_word
			
			get_guesses

			show_results
		
			want_to_play_again?

		end

	end


# **************** read_a_word method ****************
# Read a word in, 
# remove newline characters, 
# feed each character into an array of letters
# **************** read_a_word method ****************


def read_a_word(filename, turn)
	word_counter = 0
	line = nil

	File.foreach(filename) do |line|
		word_counter += 1
		if word_counter == turn	    	
			word = line.chomp!	    	
			@letters = word.scan(/./)
			@matching_guess_list = []
			word
			break
		end

		@current_guess_num = 0
	end

	line = nil if word_counter != turn
	line
end


# **************** how many words in the file? ****************
# Determine the max number of guesses based on 
# the number of words in the file
# **************** how many words in the file? ****************


def get_num_words_in_file(filename)
	num_words = File.readlines(filename).size
	num_words.to_i
end

# **************** Get the guesses from the uers  ****************
# Are there any letters left to get? If so, ask for another guess
# then check for a match
# **************** Get the guesses from the uers  ****************

def	get_guesses

 	#While the user hasn't made 6 bad guesses (head, torso, arms, legs) in a row, get the next guess
 	if @letters_remain
 		are_there_any_letters_left?
	 	while @bad_guesses < MAX_BAD_GUESSES && @letters_remain
	 		puts
	 		this_letter = ask_for_a_guess
	 		does_it_match?(this_letter) 
	  end #while
	end #if
	@this_turn += 1
end


# **************** Ask for a guess **************** 
# Prompt the user for a guess
# return the guess to the get_guesses method
# **************** Ask for a guess **************** 
def ask_for_a_guess
	puts
	puts "Guess a letter"
	puts "Letters so far: #{@matching_guess_list.join}"
	hang_man
	puts
	this_letter = gets.chomp.downcase
	puts

	this_letter
end

# **************** Does It Match **************** 
# Check to see if this letter
# matches *any* letter in the word
# if there are any matches, 
# put them into the comparison array
# in the location with the same index
# as the letter in the original word
# **************** Does It Match **************** 

def does_it_match?(this_letter)
 	current_item_in_letters = 0
 	match = false
 	
 	puts
	 		@letters.each do |letter| 				
	 			if this_letter == letter 		 			
	 				@matching_guess_list[current_item_in_letters] = this_letter 				
	 				match = true
	 			else 
	 				
		   	end #if
		   	current_item_in_letters += 1
		   	
		  end #do
		  if match == false 
		  	@bad_guesses += 1
		  end
			are_there_any_letters_left?

			match
	end #def does_it_match?

# **************** Make the Hangman ***************
# Make an ascii hangman picture to show
# status based on number of bad guesses
# **************** Make the Hangman ***************

def hang_man
	puts
	
	if @bad_guesses >= 1
		puts " _________"	
		puts " |/      |"
	end

	if @bad_guesses >= 2
		puts " |      (_)"
	end

	if @bad_guesses >= 3
		puts " |      \\|/"
	end

	if @bad_guesses >= 4
		puts " |       |"		
	end

	if @bad_guesses >= 5
		puts " |       |"		
	end

	if @bad_guesses >= MAX_BAD_GUESSES
		puts " |      / \\ "
		puts " |"
		puts "_|___"
		puts ""
	end
end



# ****************  Fill in Blanks **************** 
# fills comparison array with underscores
# ****************  Fill in blanks **************** 

	def fill_blanks_for_word
		@matching_guess_list = ["_"] * @letters.length
	end #def fill blanks

	def are_there_any_letters_left?
		@letters_remain = @matching_guess_list.include?("_")
	end #are there letters 

	def show_results
		if @bad_guesses == MAX_BAD_GUESSES && are_there_any_letters_left?
			puts
			puts "Nice try! The word was \"#{@letters.join}\""
			puts
			hang_man
		else
			puts
			puts "Hooray! The word was \"#{@letters.join}\" and you entered \"#{@matching_guess_list.join}\""
			puts
			hang_man
		end #if
	end #def show results

# **************** Want to play again **************** 
# Ask the user if they want to play again
# If they don't, then make the current turn larger than
# the maxiumum number of turns
# If they do, then set letters remaining to "true" from
# false, and reset the number of bad guesses to zero
# **************** Want to play again **************** 

	def want_to_play_again?
		puts
		puts "Do you want to play again? y or n"
		puts
		play_again = gets.chomp.downcase
		if play_again == "n"
			@this_turn = @max_turns + 1
		else
			@letters_remain = true
			@bad_guesses = 0
		end #if
	end #def want_to_play_again



end

hangman = Hangman.new("words.txt")
hangman.play




