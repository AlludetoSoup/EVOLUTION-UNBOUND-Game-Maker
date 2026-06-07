function move(sense, offset){
	if pot_target != "" {
		if last_pot_target != pot_target {
			if point_in_circle(pot_target.x, pot_target.y, x, y, sense*10) {
				pathx = clamp(pot_target.x+random_range(-offset,offset)*accuracy,0,obj_worldgen.world_size)
				pathy = clamp(pot_target.y+random_range(-offset,offset)*accuracy,0,obj_worldgen.world_size)
				mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
				path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
				return true
			}
		}else {
			if homex = -1 {
				pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
				pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
			}
			else {
				pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
				pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
			}
			mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
			path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
		}
	}
	else {return false}
}


