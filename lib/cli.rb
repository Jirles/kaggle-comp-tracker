module Tracker

  class TrackerCLI

    def call
      puts "Howdy, welcome to Kaggle Competitions Tracker!"
      puts "Here you can view active and past Kaggle competitions and review some"
      puts "of the top problems being solved by the data science community!"
      menu
    end

    def list_competitions(limit=10, status="all")
      # competitions hard-coded for now
      # limit will eventually control the number of entries seen
      # if status = 'all' is invoked as true it will list all competitions
      # set to "a" it will only pull Competiton instances marked as active
      # set to 'c' it will only pull instances marked as completed
      Tracker::Competition.list(limit, status)
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
        case input
        when "l"
          list_competitions
        when "a"
          list_competitions(limit=10, status="a")
        when "c"
          list_competitions(limit=10, status="c")
        when "q"
          break
        else
          puts "Invalid request."
        end
      end
    end
  end

end
