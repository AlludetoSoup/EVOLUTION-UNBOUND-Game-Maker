if ready {
	if sprite_exists(new_creature_sprite){
		a=locate(obj_animal,"asking",asking)
		if a!=""{
			sprite_set_offset(new_creature_sprite,sprite_get_width(new_creature_sprite)/2,sprite_get_height(new_creature_sprite)/2)
			a.sprite_index=new_creature_sprite
			struct_set(obj_camera.default_traits[a.species],"sprite_index",new_creature_sprite)
		}
	}
}