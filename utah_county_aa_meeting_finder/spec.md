# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application

My program has a CLI interface that welcomes the user and asks them what day of the week they wish to view meetings for. Once a selection is made the user is provided a list of meeting names and their times and is asked to pick a meeting they want the address to. Once this selection is made a link for Google maps is provided to the meeting's address.


- [x] Pull data from an external source

The data for my program is collected from http://www.simeetings.com/LA/UT/OremMtgs.html. Each meeting is scraped as a separate object and assigned instance variables of name, date, time, and address. These objects are then filtered by the day of the week they are on based on the user's input.

- [x] Implement both list and detail views

After the user picks a day of the week, they are presented with a list of meetings for that day and the times of those meetings. They then select the specific meeting they would like the address for and these details are provided.
