/// @description Insert description here
// You can write your code in this editor
//show_debug_message(array_length(obj_bottombar.current_set))

if dir = 0  and obj_bottombar.start_pos >= 1{
	obj_bottombar.start_pos -=1
	obj_bottombar.changed = true
	
}
else if dir  = 1 and obj_bottombar.start_pos <= array_length(obj_camera.bar_tools)-7{
	obj_bottombar.start_pos += 1
	obj_bottombar.changed = true
}