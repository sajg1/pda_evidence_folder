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
    @cards = [card1, card2, card3, card4, card5]
  end

  
end
