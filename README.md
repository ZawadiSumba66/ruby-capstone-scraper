# A Web Scraper Capstone Project

[](https://img.shields.io/badge/Microverse-blueviolet)

# Definition of Web Scraping
Web scraping is the process of using bots to extract content and data from a website. It extracts underlying HTML code and, with it, data stored in a database. The scraper can then replicate entire website content elsewhere.
It is also a form of copying, in which specific data is gathered and copied from the web, typically into a central local database or spreadsheet, for later retrieval or analysis.

# About the project
The purpose of this project is to develop a scraper tool to achieve web-scrapping. This was achieved using Ruby, Open-uri and Nokogiri gem.

Open uri is used to fetch data from the website url. This data is raw and unparsed thus cannot be understood by ruby

Nokogiri is an HTML, XML, SAX, and Reader parser. The raw data is parsed using Nokogiri thus easy to extract data.


## Built With

- Ruby


## Prerequisites

- Latest Ruby version
- Git
- Gems
   - Nokogiri
   - open-uri)
- Text Editor(eg VS Code)

## Getting Started
  1. Clone the repository
`git clone https://github.com/ZawadiSumba66/ruby-capstone-scraper.git`

2. Change directory
`cd RUBY-CAPSTONE-SCRAPER`

4. Install these gems by running
`gem install nokogiri`
`gem install open-uri`

3. Run the program
`ruby bin/main.rb`


## Author

👤 **Rose Sumba**

- GitHub: [@ZawadiSumba66](https://github.com/ZawadiSumba66)
- Twitter: [@zawadirose1](https://twitter.com/zawadirose1)
- LinkedIn: [rose-sumba](https://www.linkedin.com/in/rose-sumba-9b36401b5/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to [Patashule](https://www.behance.net/gallery/25563385/PatashuleKE) for the insipiration towards building the website.
- Hat tip to Microverse for their `README` template.

## 📝MIT License

Copyright 2020 Rose Sumba

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
