#!/usr/bin/env ruby
require './lib/deck'
require './lib/dealer'

deal = Dealer.new(Deck.new)

puts deal.shuffle_the_deck
puts deal.count_the_deck #=> 52
deal.deal_a_card(2) #=> 2
