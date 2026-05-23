// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gene_transfer(parent1_stats,parent2_stats){
show_debug_message(parent2_stats)
child = instance_create_layer(x,y,"Instances_1",obj_amoeba)
child.width = ((parent1_stats[1]+parent2_stats[1])/2)+random_range(-25,25)
child.height = ((parent1_stats[1]+parent2_stats[1])/2)+random_range(-25,25)
show_debug_message(instance_exists(child))
show_debug_message(child.layer)
show_debug_message(child.x,child.y)
}