name = instance_number(obj_amoeba)
path = path_add()
pathspeed = 3
pathx = x+1
pathy = y+1
pot_target = 0
bred = 0
breed_mate = 0
mp_potential_settings(45, 5, 5, 0)
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
moving = false
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
age=0
//traits
Health = 100
height = 10
width = 10
strength = 3
agility = 1.5
breath = 10
children_num = 2
intelligence = 100 //like iq
intuition = 20 //used for finding stuff outside of sense range
accuracy = 1 //lower this # is, the more accurate organism's senses are (use fractions for more accuracy)
curiosity = 100 //more wandering
hungertime = 250 //aka max hunger
hungerspeed = 5 //bigger # = slower hungering
starvationtime = 20 //bigger # = slower starvation
lifespan = 50
sight = 5
smell = 10
skin = 10
fertile_age=10
skin_extrusion = 0
muscle_mass_limb = 10
offspring = 1
sex=irandom(1)
traits=[Health,height,width,strength,agility,breath,children_num,intelligence,intuition,accuracy,curiosity,hungertime,hungerspeed,starvationtime,lifespan,sight,smell,skin,skin_extrusion,muscle_mass_limb,offspring]
hungry = hungertime
age_days = 0
last_age = 0
