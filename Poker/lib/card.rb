require_relative "deck.rb"


class Card

  attr_reader :suits, :decks
  
  SUIT = {
    clubs: "C",
    spades: "S",
    hearts:"H",
    diamonds: "D"
  }
  
  VALUE = {
    ace:  'Ace',
    one:  1,
    two:  2,
    three:  3,
    four:  4,
    five:  5,
    six:  6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 'Jack',
    queen: 'Queen',
    king: 'King'
  }

  def initialize
    @value = []
    # @suit = SUIT[suit]
    # @value = VALUE[value]
  end

  def self.Card
    cards = []
    SUIT.each do |k1,v1|
      VALUE.each do |k2,v2|
          cards << self.new(v1, v2)
      end
    end
    cards
  end

  # def self.ruin
  #   #change all values to Jacks
  # end

  # def each(&prc)
  #   i = 0
  #   while i < self.length
  #     prc.call(self[i])
  #     i += 1
  #   end
  #   self
  # end

  # def to_s
  #   self.to_s
  # end


end