if ds_map_find_value(async_load, "id") == request_id {
    if ds_map_find_value(async_load, "status") == 0 {
        temp_sprite = sprite_add(file_path, 1, false, false, 0, 0)
        if sprite_exists(temp_sprite) {
            sw = sprite_get_width(temp_sprite)
            sh = sprite_get_height(temp_sprite)
            surf = surface_create(sw, sh)
            surface_set_target(surf)
            draw_clear_alpha(c_black, 0)
            draw_sprite(temp_sprite, 0, 0, 0)
            surface_reset_target()
            buff = buffer_create(sw * sh * 4, buffer_fixed, 1)
            buffer_get_surface(buff, surf, 0)
            buffer_seek(buff, buffer_seek_start, 0)
            for (i = 0; i < (sw * sh); i++) {
                r = buffer_read(buff, buffer_u8)
                g = buffer_read(buff, buffer_u8)
                b = buffer_read(buff, buffer_u8)
                a = buffer_read(buff, buffer_u8)
                dist = point_distance_3d(r, g, b, 253, 181, 201)
                if dist < 30 {
                    buffer_seek(buff, buffer_seek_relative, -4)
                    buffer_write(buff, buffer_u8, 0)
                    buffer_write(buff, buffer_u8, 0)
                    buffer_write(buff, buffer_u8, 0)
                    buffer_write(buff, buffer_u8, 0)
                }
            }
            buffer_set_surface(buff, surf, 0)
            new_creature_sprite = sprite_create_from_surface(surf, 0, 0, sw, sh, false, false, 0, 0)
            sprite_ready = true
            surface_free(surf)
            buffer_delete(buff)
            sprite_delete(temp_sprite)
        }
    }
}
