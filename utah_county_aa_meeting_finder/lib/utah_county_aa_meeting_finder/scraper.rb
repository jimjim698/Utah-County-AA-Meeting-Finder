class UtahCountyAaMeetingFinder::Scraper

  def scrape_index_page(index_url)

  doc = Nokogiri::HTML(open(index_url))
  meetings = doc.css("body tr tr")


#, :location => student.css(".student-location").text, :profile_url =>   student.css("a").attribute("href").text}
end

def make_meetings(url)
  new = []
 self.scrape_index_page(url).each do |meeting|
  new<< UtahCountyAaMeetingFinder::Meetings.new_meetings(meeting)

 end
 new.each do |this|
   puts "#{this.name} on #{this.date} in #{this.address} at #{this.time}"

 end
end


end
