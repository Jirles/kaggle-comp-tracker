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
        puts "'p' to list active Kaggle competitions according the prize on offer,"
        puts "'c' to list active Kaggle competitions according to category,"
        puts "'d' to list active Kaggle competitions according to their deadlines,"
        puts "'t' to list a particuarly competition's top five teams and their scores, or"
        puts "'q' to quit."
        input = gets.chomp.downcase
        case input
        when "l"
          list_competitions
        when "p"
          puts "this will be a list accrd to prize"
        when "c"
          puts "this will be a list accrd to category"
        when "d"
          puts "this will be a list accrd to deadline"
        when "t"
          puts "this will begin the top-five submenu"
        when "q"
          break
        else
          puts "Invalid request."
        end
      end
    end
  end

end
