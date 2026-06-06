if not obj_bottombar.selecting {
	if abs(last_place_x-x)>50 or abs(last_place_y-y)>50 {
		instance_create_layer((floor(x/100)*100)+50,(floor(y/100)*100)+50,"Instances_2",obj_bush)
		last_place_x=x
		last_place_y=y
	}
}