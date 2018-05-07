module Tracker

  class TrackerCLI

    def call
      puts "Howdy, welcome to Kaggle Competitions Tracker!"
      puts "Here you can view active and past Kaggle competitions and review some"
      puts "of the top problems being solved by the data science community!"
      menu
    end

    def list_competitions(number=5, status="all")
      # competitions hard-coded for now
      # number will eventually control the number of entries seen
      # if status = 'all' is invoked as true it will list all competitions
      # set to "a" it will only pull Competiton instances marked as active
      # set to 'c' it will only pull instances marked as completed
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
      puts "What are you looking for?"
      input = nil
      while input != 'q'
        puts "Please enter:"
        puts "'l' to list competitions regardless of status,"
        puts "'a' to see only active competitions,"
        puts "'c' to see completed competitions, or"
        puts "'q' to quit."
        input = gets.chomp.downcase
        case
        when input == "l"
          list_competitions
        when input == "a"
          #list_competitions(status='a')
          puts "Here are the active competitions"
        when input == 'c'
          #list_competitions(status='c')
          puts "Here are past competitions"
        when input == 'q'
          break
        else
          puts "Invalid request."
        end
      end
    end
  end

end
