/// @description Insert description here
// You can write your code in this editor
rate = obj_camera.size/1000

if keyboard_check(vk_right){
	if x+(10*rate) <=worldgen.world_size-obj_camera.size/2 {
		x+= (10*rate)
	}
}
if keyboard_check(vk_left){
	if x-(10*rate) >= obj_camera.size/2 {
	x-= (10*rate)
	}
}
if keyboard_check(vk_up){
	if y-(10*rate) >= obj_camera.size/2 {
	y-= (10*rate)
	}
}
if keyboard_check(vk_down){
	if y+(10*rate) <=worldgen.world_size-obj_camera.size/2 {
	y+= (10*rate)
	}
}
cam = view_get_camera(0)
camera_set_view_size(cam,size,size)
camera_set_view_border(cam,size/2,size/2)


if obj_camera.size/2 > x {
x = obj_camera.size/2	
}
if obj_camera.size/2 > y {
y = obj_camera.size/2	
}
if worldgen.world_size-obj_camera.size/2 < x {
	x = worldgen.world_size-obj_camera.size/2
}
if worldgen.world_size-obj_camera.size/2 < y {
	y = worldgen.world_size-obj_camera.size/2
}
