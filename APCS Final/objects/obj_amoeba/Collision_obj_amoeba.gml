if sex = 0 and other.sex = 1 and hungry>hungertime/4 and bred=0 {
	show_debug_message("breed")
	var kids = children_num+round(random_range(-1,1))
	for (var i=kids;i>0;i=i-1) {
		scr_gene_transfer(traits, other.traits)
	}
	hungry=hungertime/5
	bred = nameof(other)
	breed_mate=1
	alarm0//set alarm to make breed_mate go to 0
}
if sex = 0 and other.sex = 1 and hungry>hungertime/4 and bred=nameof(other) and breed_mate=0{
	show_debug_message("breed with mate")
	var kids = children_num+round(random_range(-1,1))
	for (var i=kids;i>0;i=i-1) {
		scr_gene_transfer(traits, other.traits)
	}
	hungry=hungertime/6
	bred = nameof(other)
}