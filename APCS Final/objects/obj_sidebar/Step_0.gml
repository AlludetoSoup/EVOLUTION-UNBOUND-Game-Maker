/// @description Insert description here
// You can write your code in this editor
image_xscale = obj_camera.size/100
image_yscale = obj_camera.size/100


if not obj_camera.spect {
	instance_destroy()	
}
x = obj_camera.x+(obj_camera.size/2)
y = obj_camera.y-(obj_camera.size/2)


show_debug_message(string_concat("testing: ",string(x),", ",string(y)))


