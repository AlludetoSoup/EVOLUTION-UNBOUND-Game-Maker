/// @description Insert description here
// You can write your code in this editor
rate = obj_camera.size/1000
if not spect {
	if keyboard_check(vk_right){
		if x+(10*rate) <=obj_worldgen.world_size-obj_camera.size/2 {
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
		if y+(10*rate) <=obj_worldgen.world_size-obj_camera.size/2 {
		y+= (10*rate)
		}
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
if obj_worldgen.world_size-obj_camera.size/2 < x {
	x = obj_worldgen.world_size-obj_camera.size/2
}
if obj_worldgen.world_size-obj_camera.size/2 < y {
	y = obj_worldgen.world_size-obj_camera.size/2
}

if spect {
	x = spect_inst.x
	y = spect_inst.y
}