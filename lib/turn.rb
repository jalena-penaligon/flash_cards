class Turn
  attr_reader :string, :card
  def initialize(string, card)
    @string = string
    @card = card
  end

  def guess
    return string
  end

  def correct?
    @string == @card.answer
  end

  def feedback
    if correct? == true
      return "Correct!"
    elsif correct? != true
      return "Incorrect!"
    end
  end
end
