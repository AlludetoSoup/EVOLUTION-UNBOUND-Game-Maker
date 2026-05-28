/// @description Insert description here
// You can write your code in this editor
number_spawn = irandom_range(5,50)
for (var i=0; i<number_spawn;i+=1){
	stop = false
	//for (var i = 0;not stop;i+=1){
		x__= irandom(world_size)
		y__= irandom(world_size)
		//if biomeGrid[# round(x__/100),round(y__/100)] != "cold_ocean" and biomeGrid[# round(x__/100),round(y__/100)] != "warm_ocean" {
		//	stop = true
		//}
	//}
	instance_create_layer(x__,y__,"Instances_1",obj_animal)	
}