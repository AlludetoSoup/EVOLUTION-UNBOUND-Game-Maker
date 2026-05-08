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
total = 0


temp_increase = 15 * cos(((check_day - 203) / 365) * 2 * pi)



last_day = day
last_year = year
total_mins -= day*(60*24)

rate = rates[rate_pos]
show_debug_message(temp_increase)