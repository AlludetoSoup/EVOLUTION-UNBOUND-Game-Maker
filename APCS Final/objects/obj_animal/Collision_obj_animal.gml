//if sex = 0 and other.sex = 1 and 
if sex = 0 and other.sex = 1 and hungry>hungertime/4 and bred=0 and age >= fertile_age{
	show_debug_message("breed")
	var kids = children_num+irandom_range(-1,1)
	for (var i=kids;i>0;i=i-1) {
		scr_gene_transfer(traits, other.traits)
	}
	hungry=hungertime/5
	bred = other.name
	breed_mate=1
	alarm0max=10000/obj_time_controller.rate
	alarm[0]=alarm0max
}
else {if other.sex=0 and age >= fertile_age and other.bred=0 {
		hungry=hungertime/3
		bred = other.name
		breed_mate=1
		alarm0max=1000/obj_time_controller.rate
		alarm[0]=alarm0max
	}
	if other.sex=0 and age >= fertile_age and other.bred=name {
		hungry=hungertime/3
		breed_mate=1
		alarm0max=1000/obj_time_controller.rate
		alarm[0]=alarm0max
	}
}

//if sex = 0 and other.sex = 1 and 
if sex = 0 and other.sex = 1 and hungry>hungertime/4 and bred=other.name and breed_mate=0 and age >= fertile_age{
	show_debug_message("breed with mate")
	var kids = children_num+round(random_range(-1,1))
	for (var i=kids;i>0;i=i-1) {
		scr_gene_transfer(traits, other.traits)
	}
	hungry=hungertime/6
	breed_mate=1
	alarm0max=10000/obj_time_controller.rate
	alarm[0]=alarm0max
}