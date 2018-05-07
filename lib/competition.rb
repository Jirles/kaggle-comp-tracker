class Tracker::Competition

  attr_accessor :name, :prize, :total_teams, :category, :top_five_teams, :description, :url, :time_left
  @@all = []

  def initialize
    @top_five_teams = []
    @@all << self
  end

  def self.list
    # will list Competition instances
    comp_1 = self.new
    comp_1.name = "TrackML Particle Tracking Challenge"
    comp_1.description = "High Energy Physics particle tracking in CERN detectors"
    comp_1.prize = 25000
    comp_1.total_teams = 105
    comp_1.category = "Featured"
    comp_1.url = "https://www.kaggle.com/c/trackml-particle-identification"
    comp_1.time_left = "3 months to go"

    comp_2 = self.new
    comp_2.name = "Avito Demand Prediction Challenge"
    comp_2.description = "Predict demand for an online classified ad"
    comp_2.prize = 25000
    comp_2.total_teams = 559
    comp_2.category = "Featured"
    comp_2.url = "https://www.kaggle.com/c/avito-demand-prediction"
    comp_2.time_left = "2 months to go"

    #list = [comp_1, comp_2]
    self.all.each do |competition|
      self.competition_pretty_print(competition)
    end
    puts "* * * * * * * * *"
  end

  def self.all
    @@all
  end

  def self.competition_pretty_print(instance)
    #takes in an instance of the Competition class and makes it pretty for the console
    puts <<-DOC
    Name: #{instance.name}
      - Description: #{instance.description}
      - Prize: $#{instance.prize}
      - Teams: #{instance.total_teams}
      - Time Left: #{instance.time_left}
      - Category: #{instance.category}
    - - - - - - - - - - -
    DOC

  end
end
