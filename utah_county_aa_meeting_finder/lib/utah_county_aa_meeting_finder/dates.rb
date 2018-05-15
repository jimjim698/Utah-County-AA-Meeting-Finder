class UtahCountyAaMeetingFinder::Date

def initialize
end


def self.scrape_index_page(index_url)
new_array=[]
doc = Nokogiri::HTML(open(index_url))
meetings = doc.css("table")
meetings.collect do |meeting|
new_array << Date.new = meeting.css("span .style14").text #, :location => student.css(".student-location").text, :profile_url =>   student.css("a").attribute("href").text}
binding.pry
end
new_array
end

end
