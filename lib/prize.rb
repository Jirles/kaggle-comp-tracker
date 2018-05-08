require 'modules/filterable'

class Tracker::Prize

  attr_accessor :total_cash, :description, :competitions, :name
  extend FilterBy

  @@all = []

  def initialize(name)
    @name = name
    @description = description
    @@all << self
    @competitions = []
  end

  def self.all
    @@all
  end

  def self.filter
    self.all.each do |prize|
      puts ''
      puts prize.name.upcase
      puts "----------"
      prize.competitions.each do |competition|
        puts competition.name
        #if type.name == "Cash"
        #  puts competition.prize.total_cash
        # end
      end
    end
    puts "* * * * * * * * *"
  end

  def self.find_by_name(name)
    #helper function for find/create by name
    self.all.detect{|x| x.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      self.new(name)
    end
  end

end
