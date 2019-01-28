class CardGenerator
  attr_reader :filename,
              :question,
              :answer,
              :category
  def initialize(filename)
    @filename = filename
    @question = question
    @answer = answer
    @category = category
  end

  def cards
    lines = File.readlines filename
    lines.map do |line|
      columns = line.chomp.split(",")
      @question = columns[0]
      @answer = columns[1]
      @category = columns[2].to_sym
      card_1 = Card.new(@question, @answer, @category)
    end
  end
end
