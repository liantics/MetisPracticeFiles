
require "./create_cards"

class Card 
#initialize IS the method being defined. Don't need to give it an extra name, make sure parens are touching the word initialize
	def initialize() 
	end

	def play
		show_card
		guess = get_guess
		compare_guess_to_answer(guess)
	end

	def show_card
		puts @question
	end

	def get_guess
		print "Enter your guess > "
		gets.chomp
	end
	
	def compare_guess_to_answer(this_guess)
		if this_guess.downcase == @answer.downcase
		puts "Great job!"
		else
			puts "Sorry, the answer is #{@answer}"
		end
	end


end
