/// @description Insert description here
// You can write your code in this editor
total_hours = timer
hour = total_hours %  24
total_hours-=hour
day = (total_hours % (24*365)) / (24)
total_hours -= day*24
year = total_hours / (365*24)
check_day = last_day
day_past = day-last_day+365*(year-last_year)
remaining_past = day_past
total = 0


temp_increase = 15 * cos(((check_day - 203) / 365) * 2 * pi)



last_day = day
last_year = year
total_hours -= day*(24)

rate = rates[rate_pos]
