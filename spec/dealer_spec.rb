require 'rspec'
require 'pry'
require 'dealer'

describe ('Dealer') do
  the_dealer = Dealer.new

  it ('returns a deck of 52 playing cards') do
    expect(the_dealer.count_the_deck).to eq 52
  end
  
  it ('returns a single playing card from the front of the deck') do
    expect(the_dealer.deal_a_card).to eq 'Ace of Hearts'
  end

  it ('returns a shuffled deck playing cards') do
    expect(the_dealer.shuffle_the_deck).not_to be === the_dealer
  end

end