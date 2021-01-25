require 'colorize'

require_relative '../lib/scraper.rb'

           puts "
           ╦ ╦┌─┐┌┐   ╔═╗┌─┐┬─┐┌─┐┌─┐┌─┐┬─┐
           ║║║├┤ ├┴┐  ╚═╗│  ├┬┘├─┤├─┘├┤ ├┬┘
           ╚╩╝└─┘└─┘  ╚═╝└─┘┴└─┴ ┴┴  └─┘┴└─ 
            ".yellow
   puts "Welcome to Rose Sumba webscraper!!"
   puts "Get to experience optimized and fast job searching from SimplyHired.com"
   puts "This search engine consists of "
   print "To start press enter"
   
   search=Iteration.new
   
    input=gets.chomp
    while ('').include?(input)
        search.iterate
    end
    sleep 10

    puts "Would you like to continue to see more job vacancies please press y otherwise press q to quit"
    answer=get.chomp.to_downcase
    if answer

