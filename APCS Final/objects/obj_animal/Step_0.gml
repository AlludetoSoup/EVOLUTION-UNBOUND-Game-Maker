//automatically change alarm times (this is for breeding cooldown so important)
if alarm0max != 10000/obj_time_controller.rate and alarm0max != -1 and alarm[0] != -1 {
	previous = alarm[0]
	alarm[0]=(10000/obj_time_controller.rate)*(alarm[0]/alarm0max)
	alarm0max=10000/obj_time_controller.rate
	show_debug_message(string_concat("alarm0 changed from ",string(previous)," to ",string(alarm[0])))
}


if path_get_speed(path,2) != pathspeed*obj_time_controller.rate{
path_speed = pathspeed*obj_time_controller.rate
}

age_days+=obj_time_controller.rate
while age_days >=365 {
	age_days -=365
	age +=0.2*obj_time_controller.rate
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
image_yscale = Height/10
image_xscale = Width/10
if  path_position = 1 {
	if hungry < hungertime/2 {
		pot_target = locate(obj_bush, "stage", 5, self, 1, "")
		if pot_target.sprite_index = spr_bush_l5 or pot_target.sprite_index = spr_bush_l4 {
			if point_in_circle(pot_target.x, pot_target.y, x, y, sight*10) {
				pathx = clamp(pot_target.x+random_range(-5,5)*accuracy,0,obj_worldgen.world_size)
				pathy = clamp(pot_target.y+random_range(-5,5)*accuracy,0,obj_worldgen.world_size)
				mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
				path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
			}
			else {
				if point_in_circle(pot_target.x, pot_target.y, x, y, smell*10) {	
					pathx = clamp(pot_target.x+random_range(-50,50)*accuracy,0,obj_worldgen.world_size)
					pathy = clamp(pot_target.y+random_range(-50,50)*accuracy,0,obj_worldgen.world_size)
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
				}
				else {
					if point_in_circle(pot_target.x, pot_target.y, x, y, intuition*10) {
						pathx = clamp(pot_target.x+random_range(-200,200)*accuracy,0,obj_worldgen.world_size)
						pathy = clamp(pot_target.y+random_range(-200,200)*accuracy,0,obj_worldgen.world_size)
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
					}
					else {
						pathx = clamp(x+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
						pathy = clamp(y+random_range(-25, 25)*curiosity,0,obj_worldgen.world_size)
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
					}
				}
			}
		}
	
	}
	else {
		if sex = 1 and age >= fertile_age{
			pot_target = locate(obj_animal, "sex", 0, self, 1, "")
			if pot_target = "" {show_debug_message("guy blind")}
			if pot_target != "" and point_in_circle(pot_target.x, pot_target.y, x, y, smell*10){
				pathx = clamp(pot_target.x+random_range(-50, 50)*accuracy,0,obj_worldgen.world_size)
				pathy = clamp(pot_target.y+random_range(-50, 50)*accuracy,0,obj_worldgen.world_size)
				mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
				path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
			}
			else {
				if pot_target != "" {
				pathx = clamp(pot_target.x+random_range(-1000,1000)*accuracy,0,obj_worldgen.world_size)
				pathy = clamp(pot_target.y+random_range(-1000,1000)*accuracy,0,obj_worldgen.world_size)
				mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
				path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)}
				else {
					pathx = clamp(x+random_range(-25,25)*curiosity,0,obj_worldgen.world_size)
					pathy = clamp(y+random_range(-25,25)*curiosity,0,obj_worldgen.world_size)
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
					}
			}
			
		}
		else {
			if age >= fertile_age and breed_mate=0{
			
				pot_target = locate(obj_animal, "sex", 1, self, 1, "")
				if pot_target = "" {show_debug_message("girl blind...huh")}
				if pot_target != "" and point_in_circle(pot_target.x, pot_target.y, x, y, smell*10){
					pathx = clamp(pot_target.x+random_range(-50, 50)*accuracy,0,obj_worldgen.world_size)
					pathy = clamp(pot_target.y+random_range(-50, 50)*accuracy,0,obj_worldgen.world_size)
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
				}
				else {
					if pot_target != "" {
					pathx = clamp(pot_target.x+random_range(-1000,1000)*accuracy,0,obj_worldgen.world_size)
					pathy = clamp(pot_target.y+random_range(-1000,1000)*accuracy,0,obj_worldgen.world_size)
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)}
				}
			}else{
				if age >= fertile_age {
					pot_target = locate(obj_animal, "name", breed_mate, self, 1, "")
					if pot_target != "" and point_in_circle(pot_target.x, pot_target.y, x, y, intuition*10){
						pathx = clamp(x+random_range(-50,50)*curiosity,0,obj_worldgen.world_size)
						pathy = clamp(y+random_range(-50,50)*curiosity,0,obj_worldgen.world_size)
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
					}
					else {
						if pot_target != "" {
						pathx = clamp(pot_target.x+random_range(-1000,1000)*accuracy,0,obj_worldgen.world_size)
						pathy = clamp(pot_target.y+random_range(-1000,1000)*accuracy,0,obj_worldgen.world_size)
						mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
						path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)}
						}
				}else{
					pathx = clamp(x+random_range(-25,25)*curiosity,0,obj_worldgen.world_size)
					pathy = clamp(y+random_range(-25,25)*curiosity,0,obj_worldgen.world_size)
					mp_grid_path(obj_worldgen.landGrid, path, x, y, pathx, pathy, true)
					path_start(path, pathspeed*obj_time_controller.rate,path_action_stop, false)
				}			
			}
		}	
	}
}
//clamp path destination

//if path_get_point_x(path,2)!=clamp(path_get_point_x(path,2),0,obj_worldgen.world_size) or path_get_point_y(path,2)!=clamp(path_get_point_y(path,2),0,obj_worldgen.world_size){
//path_change_point(path,2,clamp(path_get_point_x(path,2),0,obj_worldgen.world_size),clamp(path_get_point_y(path,2),0,obj_worldgen.world_size),pathspeed*obj_time_controller.rate)}
//show_debug_message(path_get_length(path))

//if last_age != age {
//if irandom_range(1,round(lifespan*1.5)-age) = 1 {Health-=20}
//}
//bertha(1) made it to age 2000?????????????????????????????????????
//last_age = age


x = clamp(x, 50, obj_worldgen.world_size-50)
y = clamp(y, 50, obj_worldgen.world_size-50)


