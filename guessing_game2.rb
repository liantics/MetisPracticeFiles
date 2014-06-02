class GuessingGame
	MAX_GUESSES = 3

	/initialize instance variables/
	def initialize
		@number_to_guess = rand(1 .. 10)
		@won = false
	end 
	/done with initializing/

	/call the methods that run the game/
	def play 
		display_welcome_message
		get_guesses
	end
	/ends the play method/

private 

	/show a message telling people asking people to come play/
	def display_welcome_message
		welcome_message = "Come play a guessing game with me!"
		puts welcome_message
		puts "*" * welcome_message.length
	end
	/ends the display_welcome_message method/

	/predicate method to make the code cleaner, question mark indicates this returns boolean/
	 def won?
		@won
	end

	/bang method to make the code cleaner, exclamation indicates that it changes a value/
	 def won!
		@won = true
	end
	/ends won bang metod/

	/make the code cleaner, returns the number, so you can just call the method/
	def number_to_guess
		@number_to_guess
	end
	/end the method that returns the number to guess/

	/get the player's guesses/
	 def get_guesses
		
		/Start the MAX_GUESSES loop/
		MAX_GUESSES.times do 
			get_guess

			/if the user guessed the right number, break out of the loop/
			if @won
				break
			end
			/end the if/
		end
		/end of the MAX_GUESSES loop/


		if won?
			puts "You win! The number was #{number_to_guess}."
		else
			puts "You lost! The number was #{number_to_guess}."
		end
		/end of the if that checks whether or not the user won/
	
	end	
	/end of get_guesses method/



	 def get_guess
		puts "the number to guess is #{number_to_guess}"
		ask_for_number = "Guess a number \> "
		print ask_for_number
		guess = gets.chomp.to_i
		puts guess.inspect

		if guess == number_to_guess
			won!
		else
			puts "Incorrect, try again"
		end
		/end of the if/

	end
	/end of the get_guess (singular) method/

end
/end the class/

guessing_game = GuessingGame.new
guessing_game.play

