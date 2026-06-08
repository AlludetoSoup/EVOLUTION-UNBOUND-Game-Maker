/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
size = 50*image_xscale

if action =0 {
draw_sprite_stretched(spr_bush_l5,-1,x-size/2,y-size/2,size,size)
}
if action=1{
draw_sprite_stretched(spr_tree,-1,x-size/2,y-size/2,size,size)
}
if action=2{
draw_sprite_stretched(spr_cactus,-1,x-size/2,y-size/2,size,size)
}