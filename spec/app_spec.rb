require 'rspec'
require 'pry'
require 'app'

describe ('Deck') do
  test_deck = Deck.new

  it ('returns a deck of 52 playing cards') do
    expect(test_deck.count_the_deck).to eq 52
  end

  
  it ('returns a deck of 51 playing cards') do
    expect(test_deck.draw_a_card).to eq 'Ace of Hearts'
  end

end