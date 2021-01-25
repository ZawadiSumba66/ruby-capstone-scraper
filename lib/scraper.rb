require 'HTTParty'
require 'Nokogiri'
require_relative 'start_search.rb'   
class Iteration
    attr_accessor :page, :pagination_url
    def initialize
       @page=1
       @pagination_url = "https://www.simplyhired.com/search?q=junior+web+developer&pn=#{@page}&job=3ffZwkOLFf8taBZkYQ2peUUfaW8Ch7TnybrB3xK_6FUqxX3PJQu5kg"
    end
    def start
        pagination_unparsed_page=HTTParty.get(@pagination_url)
        pagination_parse_page =Nokogiri::HTML(pagination_unparsed_page)
        pagination_parse_page.css('div.SerpJob-jobCard')
    end
    def iterate
    jobs=[]
    scraper= Scraper.new("https://www.simplyhired.com/search?q=junior+web+developer&l=&job=qv7hkzh7TcZD8BEHuKv9Eguc_mML6R1OujyCtaMQug7JaEnfmK10kA")
        pagination_jobCards = start
        puts @pagination_url
        pagination_jobCards.each do |jobCard|
            job= {
                title:jobCard.css('div.jobposting-title').text,
                location: jobCard.css('span.JobPosting-labelWithIcon').text,
                salary: jobCard.css('span.jobposting-salary').text,
                url: "https://www.simplyhired.com/search?q=junior+web+developer&l=&job=BhcB9TsMtyLGBkmd3X7OreqDrFNjrZ_1adao0mO85QVLtXksj19eHg"+jobCard.css('a')[0].attributes["href"].value
            }
            jobs.push(job)
            puts "Job Title #{job[:title]}"
            puts "Job Location #{job[:location]}"
            puts "Job Salary #{job[:salary]}"
            puts
        end  
        puts "Page: #{@page}"
    end
end