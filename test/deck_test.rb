require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require 'pry'

class TurnTest < Minitest::Test

  def test_it_exists
    cards = [1, 2, 3]
    deck = Deck.new(cards)
    assert_instance_of Deck, deck
  end

  def test_cards_are_in_an_array
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    assert card_1, deck.cards
    assert card_2, deck.cards
    assert card_3, deck.cards
  end

  def test_there_are_3_cards
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    assert_equal 3, deck.count
  end

  def test
  end

  def test
  end

  def test
  end
end
