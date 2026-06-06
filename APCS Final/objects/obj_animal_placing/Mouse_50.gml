if not obj_bottombar.selecting {
	if abs(last_place_x-x)>100 or abs(last_place_y-y)>100 {
		instance_create_layer(x,y,"Instances_1",obj_animal)
		last_place_x=x
		last_place_y=y
	}
}