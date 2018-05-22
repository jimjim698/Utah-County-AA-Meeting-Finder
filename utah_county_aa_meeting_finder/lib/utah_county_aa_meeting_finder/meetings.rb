class UtahCountyAaMeetingFinder::Meetings
  attr_accessor :name, :address, :date, :time

@@all=[]

  def self.new_meetings(meeting)
    new = self.new(meeting.css(".groupmtgsm").text, meeting.css(".day u").text, meeting.css(".smaller").text, meeting.css("t"))

  end

  def initialize(name = nil, date = nil, address = nil, time = nil)
    @name =name
    @date = date
    @address = address
    @time = time
    @@all<<self
  end

def self.monday
  monday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Monday"
      monday_meetings<< meeting
      monday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name}"
      end
    end
  end
end

def self.tuesday
  tuesday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Tuesday"
      tuesday_meetings<< meeting
      tuesday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name}"
      end
    end
  end
end



end
