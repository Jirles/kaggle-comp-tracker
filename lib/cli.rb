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

    def display_main_menu
      puts "Please enter:"
      puts "'l' to list all active Kaggle competitions"
      puts "'f' to filter competitions according to prizes or project type,"
      puts "'c' to look into a particular competition, or"
      puts "'q' to quit."
    end 

    def display_prizes_and_projects
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
      DOC
    end

    def menu
      puts "What are you looking for?"
      input = nil
      while input != 'q'
        display_main_menu
        input = gets.chomp.downcase
        case input
        when "l"
          list_competitions
        when "f"
          display_prizes_and_projects
          input = nil
          while input != 'm'
            puts "Enter 'prize' to filter by prize, 'project' to filter by project, or 'm' to return to the main menu."
            input = gets.chomp.downcase
            if input == 'prize'
              cash = Tracker::Prize.new("Cash")
              cash.competitions = [Tracker::Competition.new("Some Machine Learning Thing"), Tracker::Competition.new("All of the Data")]
              kudos = Tracker::Prize.new("Kudos")
              kudos.competitions = [Tracker::Competition.new("Identify some objects"), Tracker::Competition.new("Using Pandas")]
              knowledge = Tracker::Prize.new("Knowledge")
              knowledge.competitions = [Tracker::Competition.new("Let's learn something")]
              Tracker::Prize.filter
            elsif input == 'project'
              research = Tracker::ProjectType.new("Research")
              research.competitions = [Tracker::Competition.new("Some Machine Learning Thing"), Tracker::Competition.new("All of the Data")]
              featured = Tracker::ProjectType.new("Featured")
              featured.competitions = [Tracker::Competition.new("Identify some objects"), Tracker::Competition.new("Using Pandas")]
              recruitment = Tracker::ProjectType.new("Recruitment")
              recruitment.competitions = [Tracker::Competition.new("Let's learn something")]
              Tracker::ProjectType.filter
            elsif input == 'm'
              next
            else
              puts "Invalid entry."
            end
          end
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
