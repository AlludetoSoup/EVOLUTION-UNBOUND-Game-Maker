if not obj_bottombar.selecting {
	if abs(last_place_x-x)>100 or abs(last_place_y-y)>100 {
		animal = instance_create_layer(x,y,"Instances_1",obj_animal)
		last_place_x=x
		last_place_y=y
		keys = struct_get_names(obj_camera.default_traits[action])
		for (i=0;i<array_length(keys);i+=1) {
			if keys[i] != "sprite_index" {
			variable_instance_set(animal, keys[i], struct_get(obj_camera.default_traits[action],keys[i]))
			animal.species = action
			
			
			}
			else{
			animal.sprite_index = asset_get_index(struct_get(obj_camera.default_traits[action],keys[i]))
			}
			
		}
	}
}