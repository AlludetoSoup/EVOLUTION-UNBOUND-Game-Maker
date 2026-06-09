if not obj_bottombar.selecting {
	if abs(last_place_x-x)>50 or abs(last_place_y-y)>50 {
		if action = 0 {
		instance_create_layer((floor(x/100)*100)+50,(floor(y/100)*100)+50,"Instances_2",obj_bush)
		}
		else if action = 1 {
		instance_create_layer((floor(x/100)*100)+50,(floor(y/100)*100)+50,"Instances_2",obj_tree)
		}
		else if action = 2 {
		inst = instance_create_layer((floor(x/100)*100)+50,(floor(y/100)*100)+50,"Instances_2",obj_tree)
		inst.sprite_index = spr_cactus
		}
		else if action = 3 {
		inst = instance_create_layer((floor(x/100)*100)+50,(floor(y/100)*100)+50,"Instances_2",obj_bush)
		inst.sprite_index=spr_remove
		alarm[0]=1
		}
		last_place_x=x
		last_place_y=y
	}
}