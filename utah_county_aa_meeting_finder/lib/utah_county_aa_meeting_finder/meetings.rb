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


def self.monday
  monday_meetings = []
  @@all.each do |meeting|

    if meeting.date == "Monday"
      monday_meetings<< meeting

      end
    end

    monday_meetings.each_with_index do |meeting, index|
  puts "#{index+1}. #{meeting.name} #{meeting.time}"
  @@chosen_meetings<<meeting
  end
end

=begin
def self.monday
  monday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Monday"
      monday_meetings<< meeting
      monday_meetings.each do |meeting|
        puts "#{meeting.name}"
      end
    end
  end
end
=end

def self.tuesday
  tuesday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Tuesday"
      tuesday_meetings<< meeting
      tuesday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name} #{meeting.time}"
    @@chosen_meetings<<meeting
      end
    end
  end
end

def self.wednesday
  wednesday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Wednesday"
      wednesday_meetings<< meeting
      wednesday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name} #{meeting.time}"
    @@chosen_meetings<<meeting
      end
    end
  end
end

def self.thursday
  thursday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Thursday"
      thursday_meetings<< meeting
      thursday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name} #{meeting.time}"
    @@chosen_meetings<<meeting
      end
    end
  end
end

def self.friday
  friday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Friday"
      friday_meetings<< meeting
      friday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name} #{meeting.time}"
    @@chosen_meetings<<meeting
      end
    end
  end
end

def self.saturday
  saturday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Saturday"
      saturday_meetings<< meeting
      saturday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name} #{meeting.time}"
    @@chosen_meetings<<meeting
      end
    end
  end
end

def self.sunday
  sunday_meetings = []
  @@all.each do |meeting|
    if meeting.date == "Sunday"
      sunday_meetings<< meeting
      sunday_meetings.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting.name} #{meeting.time}"
    @@chosen_meetings<<meeting
      end
    end
  end
end

def self.address
  @@chosen_meetings
end

def self.meeting_reset
  @@chosen_meetings.clear
end

end
