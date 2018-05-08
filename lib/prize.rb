require 'modules/filterable'

class Tracker::Prize

  attr_accessor :amounts, :description
  extend FilterBy

  @@all = []

  def initialize(name)
    @name = name
    @description = description
    @@all << self 
  end

  def add_amounts(amounts)
    #expecting a hash from Scraper, with first, second, third
    @amounts = amounts
  end

  def print_cash_prizes
    puts "First prize: $#{amounts[:first]}"
    puts "Second prize: $#{amounts[:second]}"
    puts "Third prize: $#{amounts[:third]}"
  end

end
