if hungry > 0 {
	hungry -= obj_time_controller.rate/hungerspeed*0.1
}
else {
	Health -= obj_time_controller.rate/starvationtime
}
if Health <= 0 {
	instance_destroy(self)
}
image_yscale = height/10
if  path_position = 1 {
	if hungry < hungertime { //change to hungertime/2 after testing
		pot_target = locate(obj_bush, "stage", 5, self, 1, "")
		if pot_target.sprite_index = spr_bush_l5 or pot_target.sprite_index = spr_bush_l4 {
			if point_in_circle(pot_target.x, pot_target.y, x, y, sight*100) {
				pathx = pot_target.x+random_range(-1,1)*accuracy
				pathy = pot_target.y+random_range(-1,1)*accuracy
				mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
				path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
			}
			else {
				if point_in_circle(pot_target.x, pot_target.y, x, y, smell*100) {	
					pathx = pot_target.x+random_range(-5,5)*accuracy
					pathy = pot_target.y+random_range(-5,5)*accuracy
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
				}
				else {
					if point_in_circle(pot_target.x, pot_target.y, x, y, intuition*50) {
						pathx = pot_target.x+random_range(-15,15)*accuracy
						pathy = pot_target.y+random_range(-15,15)*accuracy
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
					}
					else {
						pathx = x+random_range(-25, 25)*curiosity
						pathy = y+random_range(-25, 25)*curiosity
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
					}
				}
			}
		}
	
	}
	else {
		pathx = x+random_range(-25, 25)*curiosity
		pathy = y+random_range(-25, 25)*curiosity
		mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
		path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
	}
}

show_debug_message(instance_number(obj_amoeba))