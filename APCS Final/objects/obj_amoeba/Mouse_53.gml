pathx = mouse_x+random_range(-1000, 1000)
pathy = mouse_y+random_range(-1000, 1000)
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)