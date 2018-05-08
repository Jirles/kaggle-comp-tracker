module Tracker

  class TrackerCLI

    def call
      puts "Welcome to Kaggle Competitions Tracker!"
      puts "This tracker lets you filter through active Kaggle competitions by their attributes."
      puts "See some of the top problems in data science right now!"
      menu
    end

    def list_competitions
      # competitions hard-coded for now
      # limit will eventually control the number of entries seen
      # if status = 'all' is invoked as true it will list all competitions
      # set to "a" it will only pull Competiton instances marked as active
      # set to 'c' it will only pull instances marked as completed
      Tracker::Competition.list
    end

    def menu
      puts "What are you looking for?"
      input = nil
      while input != 'q'
        puts "Please enter:"
        puts "'l' to list all active Kaggle competitions"
        puts "'f' to filter competitions according to prizes or project type,"
        puts "'c' to look into a particular competition, or"
        puts "'q' to quit."
        input = gets.chomp.downcase
        case input
        when "l"
          list_competitions
        when "f"
          puts <<-DOC
          PRIZES      PROJECT TYPE
          ------      ------------
          Cash        Getting Started
          Knowledge   Playground
          Kudos       Recruitment
          Swag        Featured
                      Research
                      Masters
          * * * * * * * * *
          Enter 'prize' to filter by prize
          or 'project' to filter by project.
          DOC
          filter = gets.chomp.downcase 
        when "c"
          puts "choose a particular competition"
        when "q"
          break
        else
          puts "Invalid request."
        end
      end
    end
  end

end
