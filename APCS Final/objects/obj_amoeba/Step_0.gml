//if not moving {
	//moving = true
	//path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
//}
image_yscale=height/10
if path_position = 1 {
	pathx = x+(irandom(200)-100)*20
	pathy = y+(irandom(200)-100)*20
	mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
	path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
}