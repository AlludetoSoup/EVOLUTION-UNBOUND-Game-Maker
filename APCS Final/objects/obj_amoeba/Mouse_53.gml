pathx = mouse_x
pathy = mouse_y
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)