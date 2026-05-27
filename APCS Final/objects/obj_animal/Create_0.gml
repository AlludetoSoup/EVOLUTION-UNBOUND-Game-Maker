name = instance_number(obj_animal)
path = path_add()
pathspeed = 1
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
Height = 10
Width = 10
strength = 3
agility = 1.5
breath = 10
children_num = 2
intelligence = 100 //like iq
intuition = 20 //used for finding stuff outside of sense range
accuracy = 1 //lower this # is, the more accurate organism's senses are (use fractions for more accuracy)
curiosity = 3 //more wandering
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
sex=irandom(1)
hungry = hungertime
age_days = 0
last_age = 0
traits={"health":Health,"height":Height,"width":Width,"strength":strength,"agility":agility,"breath":breath,"children_num":children_num,"intellegence":intelligence,"intuition":intuition,"accuracy":accuracy,"curiosity":curiosity,"hungertime":hungertime,"hungerspeed":hungerspeed,"starvationtime":starvationtime,"lifespan":lifespan,"sight":sight,"smell":smell,"skin":skin,"skin_extrusion":skin_extrusion,"muscle_mass_limb":muscle_mass_limb}

