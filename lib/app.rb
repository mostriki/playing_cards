#! user/bin/env ruby

class Deck
  attr_accessor :cards
  def initialize
    @ranks = ['ace', '2', '3', '4', '5', '6', '7', 
              '8', '9', '10', 'jack', 'queen', 'king']
    @suits = ['hearts', 'clubs', 'diamonds', 'spades']
    @cards = []

    @ranks.flat_map { |rank| @suits.map { 
                      |suit| @cards << "#{rank.capitalize} of #{suit.capitalize}" }}
  end

  def count_the_deck
    cards.count
  end

  def draw_a_card
    cards.shift
  end

  def shuffle_the_deck
    cards.shuffle
  end

end


#Run it here
test_deck = Deck.new

puts test_deck.shuffle_the_deck
