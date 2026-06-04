/// @description Insert description here
// You can write your code in this editor
x = obj_camera.x
y = obj_camera.y+(obj_camera.size/2)
image_xscale = obj_camera.size/1000
image_yscale = obj_camera.size/1000
if obj_camera.spect {
instance_destroy()	
}

array_copy(current_set,0,obj_camera.bar_tools,start_pos,6)

