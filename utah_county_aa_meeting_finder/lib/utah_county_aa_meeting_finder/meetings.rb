class UtahCountyAaMeetingFinder::Meetings
  attr_accessor :name, :address, :date, :time

@@all=[]
@@chosen_meetings = []

  def self.new_meetings(meeting)
    if meeting.css(".groupmtgsm").text != ""
      new = self.new(meeting.css(".groupmtgsm").text, meeting.css(".day u").text, meeting.css(".marq a").attribute('href').text, meeting.css(".day").text.split("\n")[1])

    end
  end

  def initialize(name = nil, date = nil, address = nil, time = nil)
    @name =name
    @date = date
    @address = address
    @time = time
    @@all<<self
  end

def self.find_by_day(day)
  all.select do |meeting|
    meeting.date.downcase == day.downcase
  end
end

def self.all
  @@all
end

end
