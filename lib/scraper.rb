require 'nokogiri'
require 'open-uri'
require 'pry'

class Tracker::KaggleScraper

  def competition_basic_scraper
    doc = Nokogiri::HTML(open('https://www.kaggle.com/competitions'))
    competition_card = doc.css('div.block-link.block-link--bordered')
    number_competitions = doc.css('div.smart-list__content div div.sc-eIHaNI.eKmMgV span span').text
    binding.pry
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
