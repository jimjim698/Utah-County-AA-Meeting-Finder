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

# can we build a class finder method that returns the meetins that match a particular day
# Meetins.find_by_day("Monday")
# => [meeting, meeting, meeting]

def self.find_by_day(day)
  # return a collection of meetings for that day
  all.select do |meeting|
    meeting.date.downcase == day.downcase
  end

end

# def self.monday
#   monday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Monday"
#       monday_meetings<< meeting
#       end
#     end
#     monday_meetings.each_with_index do |meeting, index|
#   puts "#{index+1}. #{meeting.time} #{meeting.name}"
#   @@chosen_meetings<<meeting
#   end
# end
#
#
#
# def self.tuesday
#   tuesday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Tuesday"
#       tuesday_meetings<< meeting
#       end
#     end
#     tuesday_meetings.each_with_index do |meeting, index|
#   puts "#{index+1}. #{meeting.time} #{meeting.name}"
#   @@chosen_meetings<<meeting
#   end
# end
#
# def self.wednesday
#   wednesday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Wednesday"
#       wednesday_meetings<< meeting
#       end
#     end
#     wednesday_meetings.each_with_index do |meeting, index|
#     puts "#{index+1}. #{meeting.time} #{meeting.name}"
#     @@chosen_meetings<<meeting
#   end
# end
#
# def self.thursday
#   thursday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Thursday"
#       thursday_meetings<< meeting
#       end
#     end
#     thursday_meetings.each_with_index do |meeting, index|
#   puts "#{index+1}. #{meeting.time} #{meeting.name}"
#   @@chosen_meetings<<meeting
#   end
# end
#
# def self.friday
#   friday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Friday"
#       friday_meetings<< meeting
#       end
#     end
#     friday_meetings.each_with_index do |meeting, index|
#   puts "#{index+1}. #{meeting.time} #{meeting.name}"
#   @@chosen_meetings<<meeting
#   end
# end
#
# def self.saturday
#   saturday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Saturday"
#       saturday_meetings<< meeting
#       end
#     end
#     saturday_meetings.each_with_index do |meeting, index|
#   puts "#{index+1}. #{meeting.time} #{meeting.name}"
#   @@chosen_meetings<<meeting
#   end
# end
#
# def self.sunday
#   sunday_meetings = []
#   @@all.each do |meeting|
#     if meeting.date == "Sunday"
#       sunday_meetings<< meeting
#       end
#     end
#     sunday_meetings.each_with_index do |meeting, index|
#   puts "#{index+1}. #{meeting.time} #{meeting.name}"
#   @@chosen_meetings<<meeting
#   end
# end

def self.chosen_address
  @@chosen_meetings
end

def self.meeting_reset
  @@chosen_meetings.clear
end

def self.all
  @@all
end

end
