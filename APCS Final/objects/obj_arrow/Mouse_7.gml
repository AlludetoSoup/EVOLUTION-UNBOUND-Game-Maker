/// @description Insert description here
// You can write your code in this editor
if dir = 0  and obj_bottombar.start_pos >= 1{
	obj_bottombar.start_pos -=1
	obj_bottombar.changed = true
	
}
else if dir  = 1 and obj_bottombar.start_pos <= array_length(obj_bottombar.current_set){
	obj_bottombar.start_pos += 1
	obj_bottombar.changed = true
}