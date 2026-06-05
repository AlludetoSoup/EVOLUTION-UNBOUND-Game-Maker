/// @description Insert description here
// You can write your code in this editor


if not obj_camera.delayed_spect {
	if dir = 0{
	x = obj_bottombar.x+((-375-62.5)*obj_bottombar.image_xscale/2)
	}
	else if dir = 1{
	x = obj_bottombar.x+((375+62.5)*obj_bottombar.image_xscale/2)
	}
	y = obj_bottombar.y-25*obj_bottombar.image_xscale
	image_xscale = obj_bottombar.image_xscale
	if dir = 1 {
		image_xscale = image_xscale*-1	
	}
	image_yscale = obj_bottombar.image_yscale
}
if obj_camera.spect {
	instance_destroy()	
}