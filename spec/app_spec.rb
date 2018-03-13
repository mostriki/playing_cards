require 'rspec'
require 'pry'
require 'app'

describe ('Deck') do
  test_deck = Deck.new

  it ('returns a deck of 52 playing cards') do
    expect(test_deck.count_the_deck).to eq 52
  end
  
  it ('returns a single playing card from the front of the deck') do
    expect(test_deck.draw_a_card).to eq 'Ace of Hearts'
  end

  it ('returns a shuffled deck playing cards') do
    expect(test_deck.shuffle_the_deck).not_to be === test_deck
  end

end