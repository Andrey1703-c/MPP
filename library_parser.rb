require 'nokogiri'
require 'open-uri'
require 'csv'

wiki_url = 'https://en.wikipedia.org/wiki/List_of_libraries'
html_content = URI.open(wiki_url)

parsed = Nokogiri::HTML(html_content)

CSV.open('output.csv', 'w') do |csv|
  parsed.css('h3, figure.mw-default-size').each do |element|
    next_element = element.next_element
    if next_element.name == 'ul'
      next_element.css('li').each do |list_item|
        library_name, * = list_item.text.split(', ', 3)
        csv << [library_name]
      end
    end
  end
end
