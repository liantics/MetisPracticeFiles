require './card_reader'

class Deck

	def initialize(cards)
		@cards = cards
	end

	def play
		@cards.each do |card|
			card.play
		end
		@cards
		puts "playing"
	end

end


card_reader = CardReader.new("cards.csv") #cards is the filename of the cards file

deck = Deck.new(card_reader.cards) #open the card_reader file

deck.play