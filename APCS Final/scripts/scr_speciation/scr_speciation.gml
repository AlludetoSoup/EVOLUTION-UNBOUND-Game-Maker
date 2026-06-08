function speciation(prompt,asking,_self){
	a=instance_create_layer(x,y,"Instances_3",obj_ai_sprite)
	a.description=prompt
	a.asking=asking
	_traits = _self.traits
	variable_struct_set(_traits,"sprite_index",spr_amoeba) //change spr to ai spr later
	array_push(obj_camera.default_traits,_traits)
	array_push(obj_camera.bar_tools,[obj_place_animal, (obj_camera.bar_tools[array_length(obj_camera.bar_tools)-1][1])+1])
}