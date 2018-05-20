class UtahCountyAaMeetingFinder::Meetings
  attr_accessor :name, :address, :date

@@all=[]

  def self.new_meetings(meeting)
    self.new(meeting.css("span .style14"))
  end

  def initialize(name = nil)
    @name =name
    @@all<<self
  end

def self.monday
  puts "1. Dopeless Hopefiends"
  puts "2. New beginnings"
  puts "3. Time to wake up"
end 



end
