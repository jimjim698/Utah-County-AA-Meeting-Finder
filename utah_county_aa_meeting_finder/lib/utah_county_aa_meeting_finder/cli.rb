class UtahCountyAaMeetingFinder::CLI

def call
  puts "Welcome to Utah County AA Meeting Finder"
list_meetings
end



def list_meetings
  puts "Please pick a day you would like to view meetings for"
  input = gets.strip

  if input.downcase == "sunday"
    puts "1. Dopeless Hopefiends"
    puts "2. New beginnings"
    puts "3. Time to wake up"
      meeting_address
  end
end

def meeting_address
puts "Please select the number of the meeting you would like the address to."
input = nil
  input = gets.strip

  if input.to_i == 1
  puts  "Alano Club"

elsif input.to_i == 2
    puts "fellowship hall"
  elsif input.downcase == "exit"
    goodbye
  else
    puts "Im not sure what that means"
    list_meetings
  end
end


def goodbye
  puts "Thanks for checking in!"
end

end
