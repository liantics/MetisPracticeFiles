class GuessingGame
	/Make a constant that's used, but never changed by the code/
	MAX_GUESSES = 5

	/initialize instance variables/
	def initialize
		@number_to_guess = rand(1 .. 10)
		@won = false
	end 

	def play 
		display_welcome_message
		get_guesses
	end

private 

	def display_welcome_message
		welcome_message = "Come play a guessing game with me!"
		puts welcome_message
		puts "*" * welcome_message.length
	end

	/predicate method to make the code cleaner, question mark indicates this returns boolean/
	 def won?
		@won
	end

	/bang method to make the code cleaner, exclamation indicates that it changes a value/
	 def won!
		@won = true
	end
	/ends won bang metod/

	/make the code cleaner, returns the number, so you can just call the method name, leaving out the @/
	def number_to_guess
		@number_to_guess
	end

	/get the player's guesses/
	 def get_guesses
		
		MAX_GUESSES.times do 
			get_guess

			if won?
				break
			else
				puts "Nope, try again"
			end

		end


		if won?
			puts "You win! The number was #{number_to_guess}."
		else
			puts "You lost! The number was #{number_to_guess}."
		end
	
	end	



	 def get_guess
		puts "the number to guess is #{number_to_guess}"
		ask_for_number = "Guess a number \> "
		print ask_for_number
		guess = gets.chomp.to_i
		puts guess.inspect

		if guess == number_to_guess
			won!
		end

	end
	/end of the get_guess (singular) method/

end
/end the class/

guessing_game = GuessingGame.new
guessing_game.play

