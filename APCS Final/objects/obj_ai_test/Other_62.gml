if (ds_map_find_value(async_load, "id") == request_id) {
    var status = ds_map_find_value(async_load, "status");
    var http_code = ds_map_find_value(async_load, "http_status");
    
    if (status == 0 && http_code == 200) {
        if (file_exists(target_file_path)) {
            
            // 1. Load the original raw 512x512 image into a temporary sprite
            // remove_back = true to automatically strip out the solid black background
            var temp_large_sprite = sprite_add(target_file_path, 1, true, false, 0, 0);
            
            if (sprite_exists(temp_large_sprite)) {
                
                // 2. Create an empty 100x100 texture space in computer memory
                var comp_surf = surface_create(100, 100);
                
                // Set the render target to our new tiny surface
                surface_set_target(comp_surf);
                draw_clear_alpha(c_black, 0); // Clear it to be fully transparent
                
                // FORCE sharp pixel-perfect scaling (Disable texture blending/blur)
                gpu_set_texfilter(false);
                
                // 3. Draw the large sprite squished exactly into the 100x100 area
                // We scale it by (100 / 512) which is roughly 0.1953
                var scale_factor = 100 / 512;
                draw_sprite_ext(temp_large_sprite, 0, 0, 0, scale_factor, scale_factor, 0, c_white, 1);
                
                // Reset the target back to the normal game screen
                surface_reset_target();
                
                // 4. Convert the contents of the 100x100 surface into your final game sprite
                // Arguments: (surface, x, y, w, h, remove_back, smooth, xorig, yorig)
                new_creature_sprite = sprite_create_from_surface(comp_surf, 0, 0, 100, 100, false, false, 50, 50);
                
                // 5. Memory Cleanup (Crucial to prevent your game from running out of RAM)
                surface_free(comp_surf);
                sprite_delete(temp_large_sprite);
                
                show_debug_message("SUCCESS: Sprite compressed down to a sharp 100x100 grid!");
                sprite_ready = true;
            } else {
                show_debug_message("ERROR: Failed to decode downloaded file.");
            }
            
            file_delete(target_file_path);
        }
    }
}
