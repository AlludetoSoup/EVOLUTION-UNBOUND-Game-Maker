pathx = mouse_x+random_range(-700, 700)
pathy = mouse_y+random_range(-700, 700)
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)