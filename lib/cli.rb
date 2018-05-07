module Tracker

  class TrackerCLI

    def call
      puts "Howdy, wanna see some Kaggle Competitions?"
      list_competitions
      #menu
    end

    def list_competitions(number=5, all=nil)
      # competitions hard-coded for now
      # number will eventually control the number of entries seen
      # if all is invoked as true it will list all competitions
      puts <<-DOC
        1. TrackML Particle Tracking Challenge
          - High Energy Physics particle tracking in CERN detectors
          - $25,000
          - 105 Teams
          - Featured
        2. Avito Demand Prediction Challenge
          - Predict demand for an online classified ad
          - $25,000
          - 559 Teams
          - Featured
      DOC
    end

    def menu
      
    end
  end

end
