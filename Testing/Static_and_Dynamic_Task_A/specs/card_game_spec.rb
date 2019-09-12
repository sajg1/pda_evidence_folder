require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game.rb')
require_relative('../card.rb')

class CardGameTest < MiniTest::Test

  def setup

    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Diamonds", 5)
    @card3 = Card.new("Spades", 7)
    @card4 = Card.new("Clubs", 3)
    @card5 = Card.new("Hearts", 9)
    @cards = [@card1, @card2, @card3, @card4, @card5]
    @highCard = CardGame.new
  end

  def test_has_a_suit
    assert_equal("Spades", @card3.suit)
  end

  def test_has_a_value
    assert_equal(3, @card4.value)
  end

  def test_checkforAce
    assert_equal(@highCard.check_for_ace(@card1), true)
    assert_equal(@highCard.check_for_ace(@card2), false)
  end

  def test_highest_card
    assert_equal(@highCard.highest_card(@card3, @card4), @card3)
  end

  def test_cards_total
    assert_equal(CardGame.cards_total(@cards), "You have a total of 25")
  end

end
