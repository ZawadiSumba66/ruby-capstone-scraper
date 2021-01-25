require 'colorize'
require 'HTTParty'
require 'Nokogiri'

class Scraper
    attr_accessor :title, :location, :salary
    def initialize()
       
    end
end

def start 
    puts "Hello!! Welcome to Simply Hired Job Search Scraper".red
    puts "To start press enter"
    
    input=gets.chomp
    while ('').include?(input)
        scraper
    end
end
start
