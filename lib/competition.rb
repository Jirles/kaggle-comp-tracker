class Tracker::Competition

  def self.list(limit=10, status="all")
    # will list Competition instances
    case  status
    when "all"
      #self.all
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
    when "a"
      puts "Here's some active competitions"
    when "c"
      puts "Here's some completed competitions"
    end

  end


end
