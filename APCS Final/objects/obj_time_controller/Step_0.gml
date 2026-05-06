/// @description Insert description here
// You can write your code in this editor
total_mins = timer
minute = total_mins %  60
total_mins-=minute
hour = (total_mins % (60*24)) / 60
total_mins-=hour*60
day = (total_mins % (60*24*365)) / (60*24)
total_mins -= day*(60*24)
year = total_mins / (60*365*24)
rate = rates[rate_pos]


show_debug_message("smart: "+string(global.smartnum))
show_debug_message("dumb: "+string(global.dumbnum))