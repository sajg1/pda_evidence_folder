require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game')
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

  def test_checkforAce
    assert_equal(@highCard.checkforAce(@card1), true)
    assert_equal(@highCard.checkforAce(@card2), false)
  end

  def test_highest_card
    assert_equal(@highCard.highest_card(@card3, @card4), @card3)
  end

  def test_cards_total
    assert_equal(CardGame.cards_total(@cards), "You have a total of 25")
  end




end
