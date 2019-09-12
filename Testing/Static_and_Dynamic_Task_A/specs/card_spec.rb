require('minitest/autorun')
require('minitest/rg')
require_relative('../card.rb')

class CardGameTest < MiniTest::Test

  def setup

    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Diamonds", 5)
  end

  def test_card_suit
    assert_equal("Hearts", @card1.suit)
  end

  def test_card_value
    assert_equal(5, @card2.value)
  end


end
