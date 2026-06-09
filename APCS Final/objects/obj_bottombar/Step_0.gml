/// @description Insert description here
// You can write your code in this editor

x = obj_camera.x
y = obj_camera.y+(obj_camera.size/2)
image_xscale = obj_camera.size/1000
image_yscale = obj_camera.size/1000
if obj_camera.spect {
instance_destroy()	
}

array_copy(current_set,0,obj_camera.bar_tools,start_pos,6)

if changed {
	with obj_place_land {
		instance_destroy()	
	}
	with obj_place_animal {
		instance_destroy()	
	}
	with obj_place_bush {
		instance_destroy()	
	}
	i=0
	x__ = -250-62.5
	while i < 6 {
	if current_set[i][0] = obj_place_land { 
	inst_ =instance_create_layer(x+x__,y-50,"Instances_4",obj_place_land)
	}
	else if current_set[i][0] = obj_place_animal {
	inst_ =instance_create_layer(x+x__,y-50,"Instances_4",obj_place_animal)
	}
	else if current_set[i][0] = obj_place_bush {
	inst_ =instance_create_layer(x+x__,y-50,"Instances_4",obj_place_bush)
	}
	inst_.action = current_set[i][1]
	inst_._x = x__
	x__ += 125

	i+=1
	}
	changed = false
	//show_debug_message("here")
	//show_debug_message(instance_number(obj_place_animal))
}