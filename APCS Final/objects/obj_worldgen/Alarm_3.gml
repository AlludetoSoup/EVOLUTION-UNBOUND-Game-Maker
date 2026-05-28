/// @description Insert description here
// You can write your code in this editor
number_spawn = irandom_range(2,2)
for (var i=0; i<number_spawn;i+=1){
	stop = false
	while not stop{
		x__= irandom(world_size)
		y__= irandom(world_size)
		if biomeGrid[# round(x__/100),round(y__/100)] != "cold_ocean" and biomeGrid[# round(x__/100),round(y__/100)] != "warm_ocean" {
			stop = true
			
		}
	}
	instance_create_layer(x__,y__,"Instances_1",obj_animal)	
}