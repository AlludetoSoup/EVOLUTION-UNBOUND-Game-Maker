//automatically change running alarm times to match game speed (this is for breeding cooldown so important)
if alarm0max != 10000/obj_time_controller.rate and alarm0max != -1 and alarm[0] != -1 {
	previous = alarm[0]
	alarm[0]=(10000/obj_time_controller.rate)*(alarm[0]/alarm0max)
	alarm0max=10000/obj_time_controller.rate
	show_debug_message(string_concat("alarm0 changed from ",string(previous)," to ",string(alarm[0])))
}


if path_get_speed(path,2) != pathspeed*obj_time_controller.rate{
path_speed = pathspeed*obj_time_controller.rate
}

while age_hours >=(365*24) {
	age_hours -=(365*24)
	age +=1
}

if hungry > 0 {
	hungry -= obj_time_controller.rate/hungerspeed*0.1
}
else {
	Health -= obj_time_controller.rate/starvationtime
}
if Health <= 0 {
	instance_destroy(self)
}

if age_hours >= (25*24) and homex = -1 {
	if abs(ds_grid_get(obj_worldgen.tempGrid, x/100, y/100)-ideal_temp)<0.05{
		homex=x
		homey=y
	}
}

image_yscale = Height/10
image_xscale = Width/10
if  path_position = 1 { // if done with a path
	last_pot_target=pathx//set last_pot_target to last target
	if hungry < hungertime/2 { //if hungry
		pot_target = locate(obj_bush, "stage", 5) //find closest full-grown bush (any range)
		if pot_target != "" and last_pot_target != pot_target.x { //if bush was found and it wast't a repeat
			if move(sight,5) {} //go there if in sight range
			else {//if not in sight
				if move(smell,200) {}//go there if in smell range
				else {//if not in smell
					if move(intuition,600) {}//go there if in brain range
					else {//if not in brain
						if hungry < hungertime/4 {//if really hungry
							pot_target = instance_nearest_notme(x, y, obj_animal) //find closest prey (any range)
							if pot_target != "" and last_pot_target != pot_target.x { //if prey was found and it wast't a repeat
								if move(sight,5) {} //go there if in sight range
								else {//if not in sight
									if move(smell,200) {}//go there if in smell range
									else {//if not in smell
										if move(intuition,600) {}//go there if in brain range
										else {//if no food find and really hungry
											show_debug_message("no food find") //random wander --v
											if homex = -1 {
												pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
												pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
											}else {
												pathx = clamp(homex+random_range(-100, 100)*curiosity,0,obj_worldgen.world_size)
												pathy = clamp(homey+random_range(-100, 100)*curiosity,0,obj_worldgen.world_size)
											}
											mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
											path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
										}
									}
								}
							}else {//if not really hungery
							show_debug_message("no food find") //random wander --v
							if homex = -1 {
								pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							}
							else {
								pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							}
							mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
							path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
						}
						}
						else {//if not really hungery
							show_debug_message("no food find") //random wander --v
							if homex = -1 {
								pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							}
							else {
								pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							}
							mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
							path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
						}
					}
				}
			}
		} else{ //if no grown bush on map
			if hungry < hungertime/4 {//if really hungry
				pot_target = instance_nearest_notme(x, y, obj_animal) //find closest prey (any range)
				if pot_target != "" and last_pot_target != pot_target.x { //if prey was found and it wast't a repeat
					if move(sight,5) {} //go there if in sight range
					else {//if not in sight
						if move(smell,200) {}//go there if in smell range
						else {//if not in smell
							if move(intuition,600) {}//go there if in brain range
						}
					}
				}else {//if not really hungery
							show_debug_message("no food find") //random wander --v
							if homex = -1 {
								pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							}
							else {
								pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							}
							mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
							path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
						}
			}
		}	
	
	}
	else {//not hungry
		if sex = 1 and age >= fertile_age{//if fertile male
			pot_target = locate(obj_animal, "sex", 0, "bred", 0) //find mate (unbred female)
			if pot_target = "" {show_debug_message("guy blind")}
			if pot_target != "" and last_pot_target != pot_target.x { //if mate was found and it wast't a repeat
				if move(smell, 50) {}//go to mate if can smell
				else {//if can't smell mate
					if move(infinity, 2000) {}//wander to mate
					else {//if no mate found, random wander
						if homex = -1 {
							pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
						}
						else {
							pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
						}
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
					}
				}
			}else {
							show_debug_message("no find") //random wander --v
							if homex = -1 {
								pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							}
							else {
								pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							}
							mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
							path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
						}
		}
		else {//if female
			if age >= fertile_age and breed_mate=0{ //if fertile and unmated
			
				pot_target = locate(obj_animal, "sex", 1) //find mate (male)
				if pot_target = "" {show_debug_message("girl blind")}
				if pot_target != "" and last_pot_target != pot_target.x { //if mate was found and it wast't a repeat
					if move(smell, 50) {}//go to mate if can smell
					else {//if can't smell mate
						if move(infinity, 2000) {}//wander to mate
					}
				}else {//if not really hungery
							show_debug_message("no food find") //random wander --v
							if homex = -1 {
								pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							}
							else {
								pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							}
							mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
							path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
						}
			}else{//if mated
				if age >= fertile_age { //if fertile
					pot_target = locate(obj_animal, "name", breed_mate) //find mate (specific male)
					if pot_target != "" and last_pot_target != pot_target.x { //if mate was found and it wast't a repeat
						if move(smell, 50) {}//go to mate if can smell
						else {//if can't smell mate
							if move(infinity, 2000) {}//wander to mate
						}
				}else {//if not really hungery
							show_debug_message("no food find") //random wander --v
							if homex = -1 {
								pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
							}
							else {
								pathx = clamp(homex+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
								pathy = clamp(homey+random_range(-50, 50)*curiosity,0,obj_worldgen.world_size)
							}
							mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
							path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
						}
				}else{ //if young and not hungry, random wander
					if homex = -1 {
						pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
						pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
					}
					else {
						pathx = clamp(homex+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
						pathy = clamp(homey+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
					}
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, true)
				}			
			}
		}	
	}
}

if x != clamp(x, 100, obj_worldgen.world_size-100) or y != clamp(y, 1000, obj_worldgen.world_size-1000) {
    path_end()
    x = clamp(x, 100, obj_worldgen.world_size-100)
    y = clamp(y, 100, obj_worldgen.world_size-100)
    
    center_x = obj_worldgen.world_size / 2
    center_y = obj_worldgen.world_size / 2
    
    pathx = clamp(x + (center_x - x) * 0.15 + random_range(-25, 25) * curiosity, 100, obj_worldgen.world_size - 100)
    pathy = clamp(y + (center_y - y) * 0.15 + random_range(-25, 25) * curiosity, 100, obj_worldgen.world_size - 100)
    
    mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
    path_start(path, pathspeed * obj_time_controller.rate, path_action_stop, true)
}


if age >= lifespan {
	if age <= lifespan*1.25{
	if irandom_range(1,10) = 6 {instance_destroy()}}
	else{instance_destroy()}
}

traits={"health":Health,"height":Height,"width":Width,"strength":strength,"agility":agility,"breath":breath,"children_num":children_num,"intellegence":intelligence,"intuition":intuition,"accuracy":accuracy,"curiosity":curiosity,"hungertime":hungertime,"hungerspeed":hungerspeed,"starvationtime":starvationtime,"lifespan":lifespan,"sight":sight,"smell":smell,"skin":skin,"skin_extrusion":skin_extrusion,"muscle_mass_limb":muscle_mass_limb}

if list_traits[0]=""{
	array_delete(list_traits,0,1)
	for (i=0;i<=array_length(struct_names_count(traits));i++){
		array_insert(list_traits,i,traits[struct_get_names(traits)[i]])
		show_debug_message(string(list_traits))
	}
}


