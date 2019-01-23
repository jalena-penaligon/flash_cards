class Turn
  attr_reader :question, :answer, :guess
  def initialize(question, answer, guess = answer)
    @question = question
    @answer = answer
    @guess = guess
  end
end
