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

  def count_the_deck
    @cards.count
  end

  def draw_a_card(number)
    number.times { @cards.shift.output }
  end

  #Insert method to shuffle_the_deck

end

class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output
    puts "#{@rank.capitalize} of #{@suit.capitalize}"
  end

end


#Run it here
test_deck = Deck.new

# puts test_deck.inspect
puts test_deck.draw_a_card(1)