class UtahCountyAaMeetingFinder::Meetings
  attr_accessor :name, :address, :date, :time

@@all=[]

  def self.new_meetings(meeting)
    new = self.new(meeting.css(".groupmtgsm").text, meeting.css(".day u").text, meeting.css(".smaller").text, meeting.css("td .day .marq (text)"))

  end

  def initialize(name = nil, date = nil, address = nil, time = nil)
    @name =name
    @date = date
    @address = address
    @time = time
    @@all<<self
  end

def self.monday
  @@all.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting}"
  end
end



end
