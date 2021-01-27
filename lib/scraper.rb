# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
class Scraper
  attr_reader :link

  def initialize(link)
    @link = link
  end

  def first
    url = @link
    unparsed_page = ::OpenURI.open_uri(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    job_cards = parsed_page.css('div.SerpJob-jobCard')
    pages_count(parsed_page, job_cards)
  end

  private

  def pages_count(parsed_page = nil, job_cards = nil)
    @page = 1
    per_page = job_cards.count
    @total = parsed_page.css('span.CategoryPath-total').text.gsub(',', '').to_i
    @last_page = (@total.to_f / per_page).round
  end
end
