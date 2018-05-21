class UtahCountyAaMeetingFinder::Meetings
  attr_accessor :name, :address, :date

@@all=[]

  def self.new_meetings(meeting)
    self.new(meeting.css("span .style12"))
  end

  def initialize(name = nil)
    @name =name
    @@all<<self
  end

def self.monday
  @@all.each_with_index do |meeting, index|
    puts "#{index+1}. #{meeting}"
  end
end



end
