function speciation(prompt,asking,_self, num=0){
	with obj_ai_sprite {
		if not sprite_exists(new_creature_sprite){num++}
	}
	show_debug_message(num)
	if num > 0 {instance_destroy(_self)}else{
	a=instance_create_layer(x,y,"Instances_3",obj_ai_sprite)
	a.description=prompt
	a.asking=asking
	_traits = _self.traits
	variable_struct_set(_traits,"sprite_index",spr_loading) //change spr to ai spr later
	array_push(obj_camera.default_traits,_traits)
	array_push(obj_camera.bar_tools,[obj_place_animal, _self.species])
	}
}