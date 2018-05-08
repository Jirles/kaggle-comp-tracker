module FilterBy

  attr_accessor :type, :competitions
  @@all = []

  def initialize(name)
    @name = name
    @competitions = []
  end

  def self.all
    @@all
  end

  def count
    self.all.count
  end

  class Prize

    attr_accessor super, :amounts

    def add_amounts(amounts)
      #expecting a hash from Scraper, with first, second, third
      self.amounts = amounts
    end

  end

  class Category
    attr_accessor super, :description

    def add_description(description)
      self.description = description
    end

  end


end
