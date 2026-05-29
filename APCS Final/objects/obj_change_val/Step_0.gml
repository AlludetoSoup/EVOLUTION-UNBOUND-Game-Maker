/// @description Insert description here
// You can write your code in this editor

if not obj_camera.spect or stat = "none"{
	instance_destroy()
}
if val =1{
sprite_index = spr_increase1	
}
if val = -1 {
	sprite_index = spr_decrease1	
}

x = obj_sidebar.center_+(300*val)
y = obj_sidebar.y+changey




