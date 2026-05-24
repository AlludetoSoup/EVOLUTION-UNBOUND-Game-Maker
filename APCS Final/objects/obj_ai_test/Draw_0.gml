if (sprite_ready && sprite_exists(new_creature_sprite)) { 
    // Keep linear texture filtering off so pixel art looks crisp
    gpu_set_texfilter(false); 
    
    // Draw your processed sprite centered on the instance coordinates
    draw_sprite_ext(new_creature_sprite, 0, x, y, 3, 3, 0, c_white, 1); 
} else { 
    // Show a pulsing loading circle while waiting for the GPU network response
    draw_set_color(c_ltgray); 
    draw_circle(x, y, 20, false); 
}
