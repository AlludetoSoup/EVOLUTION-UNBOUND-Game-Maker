/// @description Insert description here
// You can write your code in this editor
if sex=0 and instance_exists(locate(obj_animal,"sex",1)){
	if (variable_instance_exists(locate(obj_animal,"sex",1), "traits")) {
		if (!is_undefined(locate(obj_animal,"sex",1).traits)) {
	scr_gene_transfer(traits,locate(obj_animal,"sex",1).traits)
		}}
	}
