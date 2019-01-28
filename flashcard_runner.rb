require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require './lib/card_generator'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
round = Round.new(deck)

puts "Welcome! You're playing with #{deck.cards.count} cards. Complete the song lyrics to win the game."
puts "---" * 10
round.start

puts "****** Game over! ******"
puts "You had #{round.number_correct.count} correct guesses out of #{round.turns.count} for a total score of #{round.percent_correct.to_i}%"
puts "STEM: #{round.percent_correct_by_category(:"STEM").to_i}%"
puts "Turing Staff: #{round.percent_correct_by_category(:"Turing Staff").to_i}%"
puts "Pop Culture: #{round.percent_correct_by_category(:"PopCulture").to_i}%"
