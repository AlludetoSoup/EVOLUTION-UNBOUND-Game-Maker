if sprite_ready and sprite_exists(new_creature_sprite){ 
    gpu_set_texfilter(false) 
    //draw_sprite_ext(new_creature_sprite, 0, x, y, 2, 2, 0, c_white, 1) 
} else if not obj_camera.spect {
    
	draw_sprite_stretched_ext(spr_egg,0,x+50,y-50,100,100,c_white,1)
}