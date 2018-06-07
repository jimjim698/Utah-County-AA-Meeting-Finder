class UtahCountyAaMeetingFinder::CLI

def call
  puts "Welcome to Utah County AA Meeting Finder"
  UtahCountyAaMeetingFinder::Scraper.new.make_meetings("http://www.simeetings.com/LA/UT/OremMtgs.html")
list_meetings
end



def list_meetings
  puts "Please pick a day you would like to view meetings for"
  input = gets.strip
  # if input.downcase == "monday"
  #   binding.pry
  #   UtahCountyAaMeetingFinder::Meetings.monday
  #     meeting_address
  #
  #   elsif input.downcase == "tuesday"
  #     UtahCountyAaMeetingFinder::Meetings.tuesday
  #       meeting_address
  #     elsif input.downcase == "wednesday"
  #       UtahCountyAaMeetingFinder::Meetings.wednesday
  #         meeting_address
  #       elsif input.downcase == "thursday"
  #         UtahCountyAaMeetingFinder::Meetings.thursday
  #           meeting_address
  #         elsif input.downcase == "friday"
  #           UtahCountyAaMeetingFinder::Meetings.friday
  #             meeting_address
  #           elsif input.downcase == "saturday"
  #             UtahCountyAaMeetingFinder::Meetings.saturday
  #               meeting_address
  #             elsif input.downcase == "sunday"
  #               UtahCountyAaMeetingFinder::Meetings.sunday
  #                 meeting_address
  #               elsif
  #                 input.downcase == "exit"
  #                 goodbye
  #               else
  if ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"].include? input.downcase
    # do this now
    # UtahCountyAaMeetingFinder::Meetings.find_by_day(input)
    meeting_address(input)
  else
    puts "I'm sorry, I don't understand"
    list_meetings
  end
end

def display_meetings(day)
  # iterate through Meeting.find_by_day(day)
  # print the info you want
end

def meeting_address(day)
puts "Please select the number of the meeting you would like directions for."
meetings = UtahCountyAaMeetingFinder::Meetings.chosen_address
  input = gets.strip
    if input.downcase == "exit"
    goodbye
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
