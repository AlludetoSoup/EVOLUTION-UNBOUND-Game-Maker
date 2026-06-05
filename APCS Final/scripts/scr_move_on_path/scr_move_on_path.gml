function move(sense, offset){
	if pot_target != "" and point_in_circle(pot_target.x, pot_target.y, x, y, sense*10) {
		pathx = clamp(pot_target.x+random_range(-offset,offset)*accuracy,0,obj_worldgen.world_size)
		pathy = clamp(pot_target.y+random_range(-offset,offset)*accuracy,0,obj_worldgen.world_size)
		mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
		path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
		return true
	}
	else {return false}
}
