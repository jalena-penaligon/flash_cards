class Round
  attr_reader :deck, :turns, :turn_count
  def initialize(deck)
    @deck = deck
    @turns = []
    @turn_count = 0
  end

  def current_card
    @deck.cards[turn_count]
  end

  def take_turn(guess)
    a_turn = Turn.new(guess, current_card)
    @turns << a_turn
    @turn_count += 1
    return a_turn
  end

  def number_correct
    @turns.select do |turn|
      turn.correct?
    end
  end

  def number_correct_by_category(category)
    @turns.select do |turn|
      turn.card.category == category && turn.correct?
    end
  end

  def percent_correct
    100.0 * (number_correct.count.to_f / turns.count.to_f)
  end

  def percent_correct_by_category(category)
    100.0 * (number_correct_by_category(category).count.to_f / deck.cards_in_category(category).count.to_f)
  end

  def start
    5.times do
      puts "This is question #{deck.cards.index(current_card) + 1} out of #{deck.cards.count}."
      puts "Question: " + current_card.question
      guess = gets.chomp.to_s
      guess.downcase!
      new_turn = take_turn(guess)
      puts new_turn.feedback
    end
  end

end
