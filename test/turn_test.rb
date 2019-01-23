require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Turn.new("Juneau", card)

    assert_instance_of Turn, card
  end


end
