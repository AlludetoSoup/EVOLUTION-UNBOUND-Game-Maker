/// @description Insert description here
// You can write your code in this editor
if grow_timer != 5{
grow_timer += obj_time_controller.rate
}
else{
grow_timer = 0	
}
while grow_timer >= 744 and stage != 5{
	if irandom(1) = 1 {
	stage +=1
	}
	check_spr()
	grow_timer-=744
}
if check = 1 {
	show_debug_message("checked")
	stage = 1
	grow_timer = 0
	check_spr()
	check = 0
}