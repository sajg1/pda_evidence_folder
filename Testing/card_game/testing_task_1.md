### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

#card.rb is not required at the beggingin of file
class CardGame

# There is no initialize function and card.rb is not required.


  def checkforAce(card)
  #must be double equals for the result to be boolean
    if card.value = 1
      return true
    else
      return false
    end
  end

#dif should be def and a missing comma in parameters
  dif highest_card(card1 card2)
#if statement should be indented
  if card1.value > card2.value
# return card1    
    return card
  else
    return card2
  end
end
#this end should be removed
end

#needs to be indented properly
def self.cards_total(cards)
#total should have a starting value of 0.
  total
  for card in cards
    total += card.value
#string interpolation needed here to show total in string. Also return needs to be moved out of for loop so that it returns after the loop is complete.
    return "You have a total of" + total
  end
end
#needs an end for the class CardGame
```
