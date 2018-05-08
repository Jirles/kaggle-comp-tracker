class Tracker::Competition

  attr_accessor :name, :prize, :total_teams, :project_type, :top_five_teams, :description, :url, :time_left, :rules
  @@all = []

  def initialize(name)
    @name = name 
    @top_five_teams = []
    @@all << self
  end

  def self.list
    # will list Competition instances from @@all
    comp_1 = self.new
    comp_1.name = "TrackML Particle Tracking Challenge"
    comp_1.description = "High Energy Physics particle tracking in CERN detectors"
    comp_1.prize = Tracker::Prize.new("Cash")
    comp_1.total_teams = 105
    comp_1.project_type = Tracker::ProjectType.new("Featured")
    comp_1.url = "https://www.kaggle.com/c/trackml-particle-identification"
    comp_1.time_left = "3 months to go"

    comp_2 = self.new
    comp_2.name = "CVPR 2018 WAD Video Segmentation Challenge"
    comp_2.description = "Can you segment each objects within image frames captured by vehicles?"
    comp_2.prize = Tracker::Prize.new("Knowledge")
    comp_2.total_teams = 559
    comp_2.project_type = Tracker::ProjectType.new("Research")
    comp_2.url = "https://www.kaggle.com/c/avito-demand-prediction"
    comp_2.time_left = "2 months to go"

    self.all.each do |competition|
      competition.print_truncated_details
    end
    puts "* * * * * * * * *"
  end

  def self.all
    @@all
  end

  #special printing methods

  def print_all
    #print all of a
  end

  def print_truncated_details
    #takes in an instance of the Competition class and makes it pretty for the console
    puts <<-DOC
    Name: #{name}
      - Description: #{description}
      - Time Left: #{time_left}
    - - - - - - - - - - -
    DOC

  end

end
