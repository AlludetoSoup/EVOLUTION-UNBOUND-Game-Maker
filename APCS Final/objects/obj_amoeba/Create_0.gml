pathspeed = 25
path = path_add()
pathx = 4000
pathy = 4000
mp_potential_settings(45, 5, 5, 0)
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
moving = false
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
//traits
height = 10
width = 10
strength = 3
agility = 1.5
breath = 10
intelligence = 100
skin =10
skinExtrusion = 0
muscleMassLimb=10
offspring = 1
traits=[height,width,strength,agility,breath,intelligence,skin,skinExtrusion,muscleMassLimb,offspring]