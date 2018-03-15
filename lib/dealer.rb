require File.expand_path('../Deck.rb', __FILE__)

class Dealer
  def initialize(deck)
    @deck = deck
  end

  def count_the_deck
    @deck.cards.count
  end

  def deal_a_card(number)
    number.times { puts @deck.cards.shift}
  end

  def shuffle_the_deck
    @deck.cards.shuffle
  end

end
