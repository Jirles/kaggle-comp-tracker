require 'nokogiri'
require 'open-uri'

class Tracker::KaggleScraper

  def initialize(base_path)
    #this may not be applicable for my purposes, but i remember this being a thing
    BASE_PATH = base_path
  end

  def competition_basic_scraper
    doc = Nokogiri::HTML(open('a url'))
    competition_card = doc.css('some selectors')
    attributes = {}
    competition_card.each do |card|
      name = card.css('some more selectors')
      competition = Tracker::Competition.new(name)
      other = card.css("mas selectors")
      attributes[:other] = other
      competition.add_attributes(attributes) # => mass assignment
    end
    nil # => returns nil 
  end

end
