class CardGenerator
  attr_reader :filename, :card_number, :cards
  def initialize(filename)
    @filename = filename
    @card_number = 1
  end

  def cards
    lines = File.readlines filename
    lines.each do |line|
      columns = line.split("''")
      @question = columns[0]
      @answer = columns[1]
      @category = columns[2]
      card_1 = Card.new(@question, @answer, @category)
    end
  end
end
