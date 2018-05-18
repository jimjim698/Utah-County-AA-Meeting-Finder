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




end
