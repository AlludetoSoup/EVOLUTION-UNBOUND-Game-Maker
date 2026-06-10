/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
size = 50*image_xscale
if array_length(obj_camera.default_traits) > 1 {
draw_sprite_stretched(asset_get_index(struct_get(obj_camera.default_traits[action],"sprite_index")),image_index,x-size/2,y-size/2,size,size)
}
else{
draw_sprite_stretched(spr_amoeba,-1,x-size/2,y-size/2,size,size)
}