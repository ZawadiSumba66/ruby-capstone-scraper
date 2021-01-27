# rubocop:disable Metrics/MethodLength
# rubocop:disable Layout/LineLength

require_relative '../lib/start_search'
require 'colorize'

def info
  scraper = Scraper.new('https://www.simplyhired.com/search?q=junior+web+developer&l=&job=qv7hkzh7TcZD8BEHuKv9Eguc_mML6R1OujyCtaMQug7JaEnfmK10kA')
  scraper.first
  @total = scraper.instance_variable_get(:@total)
  @last_page = scraper.instance_variable_get(:@last_page)
  puts "
  ╦ ╦┌─┐┌┐   ╔═╗┌─┐┬─┐┌─┐┌─┐┌─┐┬─┐
  ║║║├┤ ├┴┐  ╚═╗│  ├┬┘├─┤├─┘├┤ ├┬┘
  ╚╩╝└─┘└─┘  ╚═╝└─┘┴└─┴ ┴┴  └─┘┴└─
  ".yellow
  puts 'Hello Welcome to my webscraper!!'
  puts ' Get to experience fast and optimized search for job vacancies from simplyHired.com'
  puts " Overall #{@total}  jobs in #{@last_page} page \n\n Here are the outcomes \n\n"
  sleep(5)
  @page = 1
end

def continue
  puts "Would you like to continue to see more job vacancies? \n \n"
  puts "To continue Type 'y' or press 'Enter'".green
  puts "To stop and quit Type 'n' or 'q'".yellow
  input = gets.chomp.downcase
  while input
    if ['y', ''].include?(input)
      @page += 1
      break
    elsif %w[n q].include?(input)
      puts " Hope you found your dream job! \n Thanks for using my scraper!".green.bold
      puts ' Happy coding!'.green.bold
      exit
    else
      puts 'Invalid character!'.red.bold
      puts "To continue press 'y' or 'Enter'"
      puts "To stop and quit press 'n' or 'q' "
      input
    end
    input
  end
end

def outcome
  info
  while @page <= @last_page
    sleep 0.5
    gather = Iterate.new(@total, @page)
    gather.iterate
    jobs = gather.instance_variable_get(:@jobs)
    i = 0
    puts "\t Page #{@page} \n\n"
    while i < jobs.count
      puts " Position: #{jobs[i][:title]}".yellow.bold
      puts " Company: #{jobs[i][:company]}"
      puts " Location: #{jobs[i][:location]}".magenta.bold
      puts " Salary: #{jobs[i][:salary]}".green.bold
      puts ''
      sleep(0.1)
      i += 1
    end
    pagination_url = "https://www.simplyhired.com/search?q=junior+web+developer&pn=#{@page}&job=3ffZwkOLFf8taBZkYQ2peUUfaW8Ch7TnybrB3xK_6FUqxX3PJQu5kg"
    puts "Page link: #{pagination_url}"
    puts ''
    continue
    sleep(0.5)
  end
end
outcome

# rubocop:enable Metrics/MethodLength
# rubocop:enable Layout/LineLength
