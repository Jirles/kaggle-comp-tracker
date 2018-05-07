class Tracker::Competition

  attr_accessor :name, :prize, :team_count, :category, :status
  @@all = []

  def initialize
    @@all << self
  end

  def self.list(limit=10, status="all")
    # will list Competition instances
    case  status
    when "all"
      #self.all
      #puts <<-DOC
      #  1. TrackML Particle Tracking Challenge
      #    - High Energy Physics particle tracking in CERN detectors
      #    - $25,000
      #    - 105 Teams
      #    - Featured
      #  2. Avito Demand Prediction Challenge
      #    - Predict demand for an online classified ad
      #    - $25,000
      #    - 559 Teams
      #    - Featured
      #DOC
      comp_1 = self.new
      comp_1.name = "TrackML Particle Tracking Challenge"
      comp_1.description = "High Energy Physics particle tracking in CERN detectors"
      comp_1.prize = 25000
      comp_1.team_count = 105
      comp_1.category = "Featured"
      comp_1.status = "active"

      comp_2 = self.new
      comp_2.name = "Avito Demand Prediction Challenge"
      comp_2.description = "Predict demand for an online classified ad"
      comp_2.prize = 25000
      comp_2.team_count = 559
      comp_2.category = "Featured"
      comp_2.status = "active"

      #list = [comp_1, comp_2]
      self.all.each do |competition|
        self.pretty_print(competition)
      end
      #self.all
    when "a"
      puts "Here's some active competitions"
    when "c"
      puts "Here's some completed competitions"
    end

  end

  def self.all
    @@all
  end

  def self.pretty_print(instance)
    #takes in an instance of the Competition class and makes it pretty for the console
    puts <<-DOC
    Name: #{instance.name}
      - Description: #{instance.description}
      - Prize: $#{instance.prize}
      - Teams: #{instance.team_count}
      - Category: #{instance.category}
    - - - - - - - - - - -
  DOC

  end
end
