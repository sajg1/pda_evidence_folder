
#Needs to require_relative card.rb at the beginning of file.
class CardGame

# There is no initialize function and card.rb is not required.


  def checkforAce(card) #correct casing is snake_case.

    if card.value = 1 #must be double equals for the result to be boolean
      return true
    else
      return false
    end
  end


  dif highest_card(card1 card2) #dif should be def and a missing comma in parameters

  if card1.value > card2.value #if statement should be indented

    return card # should read return card1  
  else
    return card2
  end
end
end #this end should be removed and added on line 39.


def self.cards_total(cards) #needs to be indented properly
  total #total should have a starting value of 0.
  for card in cards
    total += card.value
#string interpolation needed here to show total in string. Also return needs to be moved out of for loop so that it returns after the loop is complete.
    return "You have a total of" + total
  end
end
#needs an end for the class CardGame
