class UtahCountyAaMeetingFinder::CLI

def call
  puts "Welcome to Utah County AA Meeting Finder"
  UtahCountyAaMeetingFinder::Scraper.new.make_meetings("http://www.simeetings.com/LA/UT/OremMtgs.html")
list_meetings
end


def list_meetings
  puts "Please pick a day you would like to view meetings for"
  input = gets.strip

  if input.downcase == "exit"
    goodbye

  elsif  ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"].include? input.downcase
   display_meetings(input)
    meeting_address(input)
  else
    puts "I'm sorry, I don't understand"
    list_meetings
  end
end

def display_meetings(day)
  UtahCountyAaMeetingFinder::Meetings.find_by_day(day).each_with_index do |meeting, index|
   puts "#{index+1}. #{meeting.time} #{meeting.name}"
  end
 end

def meeting_address(day)
puts "Please select the number of the meeting you would like directions for."


meetings = UtahCountyAaMeetingFinder::Meetings.find_by_day(day)
  input = gets.strip
    if input.downcase == "exit"
    goodbye
  elsif input.to_i > meetings.size
    puts "There are only #{meetings.size} meetings for this day"
    meeting_address(day)
    else
      corrected_input = input.to_i - 1
      selected_meeting = meetings[corrected_input]
      puts  "#{selected_meeting.address}"

      puts "Would you like to see more meetings? Type yes or no."
      input = gets.strip
      if input.downcase == "yes"
        list_meetings
      elsif input.downcase == "no"
        goodbye
    end
  end
end


def goodbye
  puts "Thanks for checking in!"
end

end
