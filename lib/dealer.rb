require File.expand_path('../Deck.rb', __FILE__)

class Dealer < Deck
  def count_the_deck
    cards.count
  end

  def deal_a_card
    cards.shift
  end

  def shuffle_the_deck
    cards.shuffle
  end

end