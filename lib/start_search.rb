require 'HTTParty'
require 'Nokogiri'

class Scraper
    attr_accessor :url, :last_page
def initialize(url)
    @url="https://www.simplyhired.com/search?q=junior+web+developer&l=&job=qv7hkzh7TcZD8BEHuKv9Eguc_mML6R1OujyCtaMQug7JaEnfmK10kA"
end
def page_count
    unparsed_page=HTTParty.get(@url)
    parse_page =Nokogiri::HTML(unparsed_page)
    jobCards=parse_page.css('div.SerpJob-jobCard')
    per_page=jobCards.count #11
    total=parse_page.css('span.CategoryPath-total').text.gsub(',', '').to_i #376 jobs
    @last_page= (total.to_f/per_page.to_f).round
end
end
