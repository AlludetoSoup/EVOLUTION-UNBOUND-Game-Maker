if pot_target != "" and instance_exists(pot_target){
	if other.name = pot_target.name {
		if hungry>hungertime/4 and age >= fertile_age {
			if sex = 0 and other.sex = 1 and hungry>hungertime/4 and breed_mate=0 and age >= fertile_age{
				show_debug_message("breed")
				var kids = children_num+irandom_range(-1,1)
				for (var i=kids;i>0;i=i-1) {
					scr_gene_transfer(traits, other.traits)
				}
				hungry=hungertime/5
				breed_mate=1
				alarm0max=10000/obj_time_controller.rate
				alarm[0]=alarm0max
			}
		}
		else {
			if strength >= other.strength {
				instance_destroy(other)
				hungry = hungertime*((other.Height+other.Width)/2)/2
			}
		}
	}
}