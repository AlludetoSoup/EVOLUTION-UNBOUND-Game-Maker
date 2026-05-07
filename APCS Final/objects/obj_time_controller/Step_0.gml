/// @description Insert description here
// You can write your code in this editor
total_mins = timer
minute = total_mins %  60
total_mins-=minute
hour = (total_mins % (60*24)) / 60
total_mins-=hour*60
day = (total_mins % (60*24*365)) / (60*24)
if day > last_day {
	if day <= 356 and day > 203 {
		temp_increase -= 0.08219178082*(365/153)
	}
	else{
		temp_increase += 0.08219178082*(365/212)
	}
}
last_day = day
total_mins -= day*(60*24)
year = total_mins / (60*365*24)
rate = rates[rate_pos]


show_debug_message(temp_increase)