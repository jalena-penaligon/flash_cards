require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

card_1 = Card.new("With the lights out, it's less dangerous. Here we are now, entertain us. I feel stupid and ____", "contagious", :Alternative)
card_2 = Card.new("You may say that I'm a dreamer. But I'm not the only ____", "one", :Soft_Rock)
card_3 = Card.new("People always told me be careful of what you do. And don't go around breaking young girls' _____", "hearts", :Pop)
card_4 = Card.new("Is this the real life? Is this just fantasy? Caught in a landslide, no escape from  ____", "reality", :Classic_Rock)
card_5 = Card.new("Remember to let her into your heart, then you can start to make it _____", "better", :Soft_Rock)

cards = [card_1, card_2, card_3, card_4, card_5]
deck = Deck.new(cards)
round = Round.new(deck)

puts "Welcome! You're playing with 5 cards. Complete the song lyrics to win the game."
puts "---" * 10
round.start

puts "****** Game over! ******"
puts "You had #{round.number_correct.count} correct guesses out of #{round.turns.count} for a total score of #{round.percent_correct.to_i}%"
puts "Alternative: #{round.percent_correct_by_category(:Alternative).to_i}%"
puts "Soft Rock: #{round.percent_correct_by_category(:Soft_Rock).to_i}%"
puts "Classic Rock: #{round.percent_correct_by_category(:Classic_Rock).to_i}%"
puts "Pop: #{round.percent_correct_by_category(:Pop).to_i}%"
