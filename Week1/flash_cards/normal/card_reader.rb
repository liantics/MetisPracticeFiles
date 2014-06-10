#since we're importing a csv file, which is a standard library function, we need to require the csv
require "csv"
require "./card"

class CardReader
	
	def initialize(filename)
		@filename = filename
	end

	def cards #our card reader array is expecting a method named cards
		cards = []

		CSV.foreach(@filename, headers: true) do |row|	
			cards << Card.new(row["Question"], row["Answer"])
		end
		cards
	end

end

	#foreach opens the file, iterates through it, passes options off to new() 
		 #if the :headers option is set, for each line, it's going to return the key 
		 # and the object in each array element. 
		 # like in a file with a header of Question and Answer
		 # ["Question" => "What does x mean?", "Answer" => "whatever it means"]
		 # returns a HASH not an array
