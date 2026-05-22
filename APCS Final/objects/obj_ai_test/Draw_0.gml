if (sprite_ready && sprite_exists(new_creature_sprite)) {
    // Keep linear texture filtering off so the 100x100 blocks stay crisp on high-res monitors
    gpu_set_texfilter(false); 
    
    // Draw your newly compressed sprite natively
    draw_sprite_ext(new_creature_sprite, 0, x, y, 3, 3, 0, c_white, 1);
} else {
    // Show a loading square while waiting for the network card
    draw_set_color(c_silver);
    draw_circle(x,y,50,false)
}
