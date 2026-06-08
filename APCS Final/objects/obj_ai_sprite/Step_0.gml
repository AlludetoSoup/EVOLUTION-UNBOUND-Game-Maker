if sprite_exists(new_creature_sprite){
	a=locate(obj_animal,"species",ask,"asking",asking)
	show_debug_message(a)
	if a!=""{
		sprite_set_offset(new_creature_sprite,sprite_get_width(new_creature_sprite)/2,sprite_get_height(new_creature_sprite)/2)
		a.sprite_index=new_creature_sprite
	}
}