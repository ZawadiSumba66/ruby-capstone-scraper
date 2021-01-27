# rubocop:disable Layout/LineLength
require_relative '../lib/scraper'

class Iterate
  attr_reader :total, :page
  attr_accessor :jobs

  def initialize(total, page)
    @total = total
    @page = page
    @jobs = jobs
  end

  def start
    pagination_url = "https://www.simplyhired.com/search?q=junior+web+developer&pn=#{@page}&job=3ffZwkOLFf8taBZkYQ2peUUfaW8Ch7TnybrB3xK_6FUqxX3PJQu5kg"
    pagination_unparse_page = ::OpenURI.open_uri(pagination_url)
    pagination_parsed_page = Nokogiri::HTML(pagination_unparse_page)
    pagination_parsed_page.css('div.SerpJob-jobCard')
  end

# rubocop:disable Metrics/MethodLength
  def iterate
    @jobs = []
    pagination_job_cards = start
    pagination_job_cards.each do |job_card|
      job = {
        title: job_card.css('div.jobposting-title').text,
        location: job_card.css('span.JobPosting-labelWithIcon').text,
        salary: job_card.css('span.jobposting-salary').text,
        company: job_card.css('span.jobposting-company').text,
        url: "https://www.simplyhired.com/search?q=junior+web+developer&l=&job=BhcB9TsMtyLGBkmd3X7OreqDrFNjrZ_1adao0mO85QVLtXksj19eHg#{job_card.css('a')[0].attributes['href'].value}"
      }
      @jobs.push(job)
    end
    @page += 1
  end
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Layout/LineLength
