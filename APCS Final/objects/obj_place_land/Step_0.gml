/// @description Insert description here
// You can write your code in this editor
if not obj_camera.delayed_spect {
	x = obj_bottombar.x+(_x*obj_bottombar.image_xscale/2)
	y = obj_bottombar.y-25*obj_bottombar.image_xscale
	image_xscale = obj_bottombar.image_xscale
	image_yscale = obj_bottombar.image_yscale
}
if obj_camera.spect {
instance_destroy()	
}