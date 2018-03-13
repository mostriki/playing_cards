require 'rspec'
require 'pry'
require 'app'

describe ('Deck') do

  it ('returns a count of 52 playing cards') do
    test_deck = Deck.new
    expect(test_deck.count_the_deck).to eq 52
  end

end