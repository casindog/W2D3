require_relative 'card.rb'

class Deck

  def initialize
    @deck = Array.new(52) {Card.new}
  end

  def start_fresh
    suits = [:hearts, :clubs, :spades, :diamonds]
    values = [:ace, :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten, :jack, :queen, :king]
    deck = []
    suits.each do |suit|
      values.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end

end
