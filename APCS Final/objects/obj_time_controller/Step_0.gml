/// @description Insert description here
// You can write your code in this editor
total_mins = timer
minute = total_mins %  60
total_mins-=minute
hour = (total_mins % (60*24)) / 60
total_mins-=hour*60
day = (total_mins % (60*24*365)) / (60*24)
year = total_mins / (60*365*24)
check_day = last_day
day_past = day-last_day+365*(year-last_year)
remaining_past = day_past
//show_debug_message(day_past)
while remaining_past > 0 {
	
	
	
	//ts no work and i cant figure out why, too complex for 1 brain cell to understand
	if check_day <= 356 and check_day > 203 {
		if check_day+remaining_past > 203 {
			day_past_checking = 203-check_day
			check_day = 203
			remaining_past-= day_past_checking
		}
		temp_increase -= 0.08219178082*(365/153)*day_past_checking
	}
	else{
		if check_day+remaining_past > 356 or check_day+remaining_past < 203 {
			day_past_checking = 356-check_day
			check_day = 356
			remaining_past-= day_past_checking
		}
		temp_increase += 0.08219178082*(365/212)*day_past_checking
	}
}

last_day = day
last_year = year
total_mins -= day*(60*24)

rate = rates[rate_pos]
show_debug_message(temp_increase)