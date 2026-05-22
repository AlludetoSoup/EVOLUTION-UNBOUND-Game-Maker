if (ds_map_find_value(async_load, "id") == request_id) {
    var status = ds_map_find_value(async_load, "status");
    var http_code = ds_map_find_value(async_load, "http_status");
    
    show_debug_message("=== SANDBOX FILE RESPONSE ===");
    show_debug_message("Status Code: " + string(status));
    show_debug_message("HTTP Code: " + string(http_code));
    
    // status == 0 means the server finished downloading the asset file perfectly
    if (status == 0 && http_code == 200) {
        
        // Double-check the file safely written inside the sandbox
        if (file_exists(target_file_path)) {
            
            // Unpack the local file stream into game memory
            // remove_back = true strips away the solid black AI background
            new_creature_sprite = sprite_add(target_file_path, 1, true, false, 0, 0);
            
            if (sprite_exists(new_creature_sprite)) {
                show_debug_message("SUCCESS: AI Sprite compiled correctly from sandbox storage!");
                sprite_ready = true;
            } else {
                show_debug_message("ERROR: File exists, but GameMaker failed to decode it.");
            }
            
            // Delete the file to keep the folder clean
            file_delete(target_file_path);
        }
    } else if (status < 0) {
        show_debug_message("CRITICAL: Connection timed out or aborted.");
    }
}
