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

end
