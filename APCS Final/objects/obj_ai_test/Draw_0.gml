if (sprite_ready && sprite_exists(new_creature_sprite)) {
    // Disable texture filtering to keep the pixel art sharp when scaling
    gpu_set_texfilter(false);
    
    // Draw the sprite (and scale down if needed)
    draw_sprite_ext(new_creature_sprite, 0, x, y, 1, 1, 0, c_white, 1);
} else {
    // Draw a placeholder loading box while waiting for the AI
    draw_rectangle(x, y, x + 64, y + 64, true);
}
