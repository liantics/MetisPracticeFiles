class GuessingGame

	MAX_ATTEMPTS = 3

  /in ruby initialize is called when you call .new/
  /you cannot call this method directly, ruby calls it, not you/
  /so don't use initialize in any other chunk of code/
  /if you don't write it, ruby makes one for you /

	def initialize 
		@min_guess = 1
		@max_guess = 100
		@value_to_match = @min_guess + rand(@max_guess)	
		@won = false
		@cheat_mode = false
	end

	def play
		display_welcome_message
		get_guesses
	end

private 
	def display_welcome_message
		welcome_message = "Welcome to the guessing game."
		puts ""
		puts "*" * welcome_message.length
		puts welcome_message
		puts "*" * welcome_message.length
		puts ""
	end

	def get_guesses
		MAX_ATTEMPTS.times do
			get_guess
			if won?
				break
			end
		end

		if won?
			puts "We have a winner! The number is #{@value_to_match}."
		else
			puts "Oooh! Bummer. The number was #{@value_to_match}. Better luck next time!"
		end
	end

	def get_guess
		/puts "number to guess is #{@value_to_match}"/
		prompt = "Guess a number from #{@min_guess} to #{@max_guess} \> "
		print prompt
		response = gets.to_i
		/puts "you entered " + response.inspect/

			if @value_to_match == response
				won!
			end
	end

	def won?
		@won
	end

 def won!
		@won = true
	end
end
game = GuessingGame.new
game.play