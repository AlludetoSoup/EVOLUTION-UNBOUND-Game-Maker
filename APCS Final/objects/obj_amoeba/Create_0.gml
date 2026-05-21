pathspeed = 1
path = path_add()
pathx = x
pathy = y
pot_target = 0
mp_potential_settings(45, 5, 5, 0)
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
moving = false
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
//traits
Health = 100
height = 10
width = 10
strength = 3
agility = 1.5
breath = 10
intelligence = 100 //like iq
intuition = 100 //used for finding stuff outside of sense range
accuracy = 1 //higer this # is, the more accurate organism's senses are (use fractions for less accuracy)
curiosity = 100 //more wandering
hungertime = 250 //aka max hunger
hungerspeed = 10 //bigger # = slower hungering
sight = 5
smell = 10
skin = 10
skin_extrusion = 0
muscle_mass_limb = 10
offspring = 1
sex=irandom(1)
traits=[Health,height,width,strength,agility,breath,intelligence,intuition,accuracy,curiosity,hungertime,hungerspeed,sight,smell,skin,skin_extrusion,muscle_mass_limb,offspring]
hungry = hungertime