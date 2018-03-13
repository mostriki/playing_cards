#! user/bin/env ruby

class Deck
  attr_accessor :cards
  def initialize
    @ranks = ['ace', '2', '3', '4', '5', '6', '7', 
              '8', '9', '10', 'jack', 'queen', 'king']
    @suits = ['hearts', 'clubs', 'diamonds', 'spades']
    @cards = []

    @ranks.flat_map { |rank| @suits.map { |suit| @cards << Card.new(rank, suit) } }
  end

  def shuffle_the_deck
    @cards.shuffle!
  end

  #Insert method to draw cards from the deck one at a time until the deck is empty
  

  def count_the_deck
    @cards.count
  end

end

class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

end


#Run it here
test_deck = Deck.new

puts test_deck.inspect