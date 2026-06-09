if not obj_bottombar.selecting {
	//show_debug_message(action_)
	ds_grid_set(obj_worldgen.biomeGrid, x/100, y/100, action_)
	if action_ = "mountain"{mp_grid_add_cell(obj_worldgen.landGrid,x/100,y/100)}else{mp_grid_clear_cell(obj_worldgen.landGrid,x/100,y/100)}
}