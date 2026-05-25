if sprite_ready and sprite_exists(new_creature_sprite) { 
    gpu_set_texfilter(false) 
    draw_sprite_ext(new_creature_sprite, 0, x, y, 3, 3, 0, c_white, 1) 
} else {
    
	draw_sprite_stretched_ext(spr_egg,-1,x,y,100,100,c_white,1)
}