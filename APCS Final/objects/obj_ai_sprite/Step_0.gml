a=locate(obj_animal,"asking",asking)
if a!=""{
	a_species=a.species
	if sprite_exists(new_creature_sprite){
		sprite_set_offset(new_creature_sprite,sprite_get_width(new_creature_sprite)/2,sprite_get_height(new_creature_sprite)/2)
		a.sprite_index=new_creature_sprite
		a.image_xscale=0.5
		a.image_yscale=0.5
		struct_set(obj_camera.default_traits[a.species],"sprite_index",new_creature_sprite)
	}
}else{
	if sprite_exists(new_creature_sprite){
		struct_set(obj_camera.default_traits[a_species],"sprite_index",new_creature_sprite)
	}
}


