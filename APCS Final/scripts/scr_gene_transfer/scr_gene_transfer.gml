// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gene_transfer(parent1_stats,parent2_stats){
show_debug_message(parent2_stats)
child = instance_create_layer(100,100,"Instances",obj_amoeba)
child.height = 100
show_debug_message(instance_exists(child))
show_debug_message(child.layer)
show_debug_message(child.x,child.y)
}