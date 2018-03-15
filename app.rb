#!/usr/bin/env ruby
require './lib/deck'
require './lib/dealer'

deal = Dealer.new(Deck.new)

puts deal.count_the_deck
puts deal.deal_a_card
puts deal.shuffle_the_deck
