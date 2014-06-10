class Card
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def play
    show_the_question
    guess = ask_for_guess
    if correct?(guess)
      puts "Yay! You're the best!"
    else
      puts "Yay! You're the worst! The answer was #{@answer}"
    end
  end

  def show_the_question
    puts @question
  end

  def ask_for_guess
    print ">"
    gets.chomp
  end

  def correct?(guess)
    guess == @answer
end

  def to_s
    "#{@question} / #{@answer}"
  end
end

