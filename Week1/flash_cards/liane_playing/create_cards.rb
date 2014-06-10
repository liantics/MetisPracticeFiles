class Create_Cards
	MAX_CARDS = 5

	def initialize
		@q_a_array = Array.new
	end

	def create_them
		get_questions_and_answers
	end

	def get_questions_and_answers
		MAX_CARDS.times do
		 #create an array of question and answer arrays
			q_a_pair = [get_a_question, get_an_answer]
			puts q_a_pair
	 		@q_a_array.push(q_a_pair)
	 	end
	end

	def get_a_question 
	 puts "enter a question > "
	 gets.chomp
	end

	def get_an_answer
	 puts "enter the answer for that question > "
	 gets.chomp
	end
end

created_cards = Create_Cards.new()
created_cards.create_them