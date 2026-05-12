/// @description Insert description here
// You can write your code in this editor

for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if obj_time_controller.day_past >0{
			cloudGrid[# cellX,cellY] += (irandom_range(0,1)/100)*obj_time_controller.day_past
				
			
			
			
			
		}
			
}}

//if frame mod 100 finish this
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 {
		if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20){
			rainingGrid[# cellX,cellY] = true
				
			
			
			
			
		}
		}
			
}}

frame +=1