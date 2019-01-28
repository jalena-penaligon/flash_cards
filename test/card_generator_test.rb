require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require 'pry'


class CardGeneratorTest < Minitest::Test

  def test_is_it_referencing_the_correct_file
    filename = "cards.txt"
    assert_equal 'cards.txt', filename
  end

  def test_assert_correct_cards_inputted
    filename = "cards.txt"
    card = CardGenerator.new(filename).cards
    assert_equal "10", card[0].answer
    assert_equal "What is Rachel's favorite animal?", card[1].question
    assert_equal :"Turing Staff", card[2].category
  end


end
