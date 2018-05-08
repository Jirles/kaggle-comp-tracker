require 'modules/filterable'

class Tracker::ProjectType
  attr_accessor :name, :competitions, :description
  extend FilterBy
  @@all = []

  def initialize(name)
    @name = name
    @competitions = []
    @@all << self
  end

  def self.all
    @@all
  end

end
