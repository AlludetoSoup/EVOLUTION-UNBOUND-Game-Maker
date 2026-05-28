function scr_gene_transfer(parent1_stats,parent2_stats){
	if age >= fertile_age {
		show_debug_message(parent2_stats)
		p1_traits_arr=variable_struct_get_names(parent1_stats)
		p2_traits_arr=variable_struct_get_names(parent2_stats)
		
		for(i=0; i < array_length(p1_traits_arr); i++){
			p1_key= p1_traits_arr[i]
			p1_value=parent1_stats[$ p1_key]
			p2_key= p2_traits_arr[i]
			p2_value=parent2_stats[$ p2_key]
			p1_key = ((p1_value+p2_value)/2)+random_range(-2,2)
			//append p1 key to laist
			child.traits=p1_key
		}
		child = instance_create_layer(x+random_range(-100,100),y+random_range(-100,100),"Instances_1",obj_animal)
		show_debug_message(instance_exists(child))
		show_debug_message(string(child.layer))
		show_debug_message(child.x,child.y)
	}
}
