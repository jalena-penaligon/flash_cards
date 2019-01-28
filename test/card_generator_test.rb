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

  def test_it_adds_each_line_as_card_objects
    filename = "cards.txt"
    card = CardGenerator.new(filename).cards
    binding.pry
    assert_equal [card_1, card_2, card_3, card_4, card_4, card_6], CardGenerator.new(filename).cards
  end

  def test_are_cards_stored_in_array
    skip
  end

end
