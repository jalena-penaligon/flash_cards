class Turn
  attr_reader :string, :card
  def initialize(guess, card)
    @string = guess
    @card = card
  end

  def guess
    return string
  end

  def correct?
    if string == guess
      return true
    else
      return false
    end
  end

  def feedback
    if correct? == true
      return "Correct!"
    elsif correct? != true
      return "Incorrect!"
    end
  end
end
