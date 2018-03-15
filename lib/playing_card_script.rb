#!/usr/bin/env ruby

require_relative 'deck'
require_relative 'dealer'

# Integrate functionality to call from terminal
deal = Dealer.new(Deck.new)

puts deal.count_the_deck
