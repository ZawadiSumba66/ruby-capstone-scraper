require 'HTTParty'
require 'Nokogiri'

class Scraper
    attr_accessor :url
def initialize(url)
    @page=page
    @url="https://www.simplyhired.com/search?q=junior+web+developer&l=&job=qv7hkzh7TcZD8BEHuKv9Eguc_mML6R1OujyCtaMQug7JaEnfmK10kA"
end
def start_scrap
    unparsed_page=HTTParty.get(@url)
    parse_page =Nokogiri::HTML(unparsed_page)
    jobCards=parse_page.css('div.SerpJob-jobCard')
    pages_count(jobCards,parse_page)
end

def pages_count(jobCards=nil,parse_page=nil)
    @page=1
    per_page=jobCards.count #11
    total=parse_page.css('span.CategoryPath-total').text.gsub(',', '').to_i #376 jobs
    last_page= (total.to_f/per_page.to_f).round
end
end
