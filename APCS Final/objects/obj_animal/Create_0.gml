name = instance_number(obj_animal)
homex = -1
homey = -1
ideal_temp=ds_grid_get(obj_worldgen.tempGrid, x/100, y/100)
path = path_add()
pathspeed = 1
pathx = x+1
pathy = y+1
pot_target = ""
last_pot_target=""
bred = 0
breed_mate = 0
alarm0max=-1
mp_potential_settings(45, 5, 5, 0)
mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
moving = false
path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
age=0
list_traits=[""]
species=0
asking=0
//traits
Health = 100
Health = choose(100,150)
Height = 10
Width = 10
strength = choose(3,5)
agility = 1.5
breath = 10
children_num = 1
intelligence = 100 //like iq
intuition = 100 //used for finding stuff outside of sense range
accuracy = 1 //lower this # is, the more accurate organism's senses are (use fractions for more accuracy)
curiosity = 10 //more wandering
hungertime = 250 //aka max hunger
hungerspeed = 5000 //bigger # = slower hungering
hungertime = choose(250,300) //aka max hunger
hungerspeed = 5 //bigger # = slower hungering
starvationtime = 20 //bigger # = slower starvation
lifespan = choose(20,35)
sight = 30
smell = 50
skin = 10
fertile_age=1
skin_extrusion = 0
muscle_mass_limb = 10
sex=irandom(1)
hungry = hungertime
age_hours = 0
last_age = 0
traits={"Health":Health,"Height":Height,"Width":Width,"strength":strength,"agility":agility,"breath":breath,"children_num":children_num,"intelligence":intelligence,"intuition":intuition,"accuracy":accuracy,"curiosity":curiosity,"hungertime":hungertime,"hungerspeed":hungerspeed,"starvationtime":starvationtime,"lifespan":lifespan,"sight":sight,"smell":smell,"skin":skin,"fertile_age":10,"skin_extrusion":skin_extrusion,"muscle_mass_limb":muscle_mass_limb}
same_species = 0
new_sprite = ""
first = false
alarm[2]=5

