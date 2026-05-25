if (ds_map_find_value(async_load, "id") == request_id) { 
    var status = ds_map_find_value(async_load, "status") 
    var http_code = ds_map_find_value(async_load, "http_status") 
    
    if (status == 0 && http_code == 200) { 
        if (file_exists(target_file_path)) { 

            var temp_large_sprite = sprite_add(target_file_path, 1, true, false, 0, 0) 
            
            if (sprite_exists(temp_large_sprite)) { 
                var img_w = sprite_get_width(temp_large_sprite)
                var img_h = sprite_get_height(temp_large_sprite)
                

                var comp_surf = surface_create(100, 100) 
                
                if (surface_exists(comp_surf)) {
                    surface_set_target(comp_surf) 
                    draw_clear_alpha(c_black, 0) 
                    
                    gpu_set_texfilter(false)
                    
                    var scale_x = 100/img_w
                    var scale_y = 100/img_h
                    
                    draw_sprite_ext(temp_large_sprite, 0, 0, 0, scale_x, scale_y, 0, c_white, 1) 
                    surface_reset_target() 
                    

                    new_creature_sprite = sprite_create_from_surface(comp_surf, 0, 0, 100, 100, false, false, 50, 50) 
                    
                    surface_free(comp_surf) 
                    sprite_ready = true
                    show_debug_message("yippe")
                } else {
                    show_debug_message("memory error")
                }
                
                sprite_delete(temp_large_sprite) 
            } else { 
                show_debug_message("failed to decode") 
            } 
            
            file_delete(target_file_path) 
        } 
    } else if (status < 0) {
        show_debug_message("network error " + string(http_code))
    }
}
