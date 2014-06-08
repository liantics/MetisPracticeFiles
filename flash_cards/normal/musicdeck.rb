require './musiccards'

class Deck

	def initialize(cards)
		@cards = cards
	end

	# def play
	# 	@cards.each do |card|
	# 		card.play
	# 	end
	# 	@cards
	# 	puts "playing"
	# end

end


deck = Deck.new("musiccards.csv") #cards is the filename of the cards file

