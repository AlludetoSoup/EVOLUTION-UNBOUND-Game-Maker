/// @description Insert description here
// You can write your code in this editor
if obj_time_controller.day_past > 1 {
for (var days = 0; days < obj_time_controller.day_past; days+=1){
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if obj_time_controller.day_past >0{
			if not rainingGrid[# cellX, cellY] {
				cloudGrid[# cellX,cellY] += (irandom_range(0,1)/50)
			}
			else {
				cloudGrid[# cellX,cellY] -= (irandom_range(0,1)/10)	
			}
				
			
			
			
			
		}
			
}}

if obj_time_controller.rate <= 100{
if frame mod 100/obj_time_controller.rate = 0 {
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				rainingGrid[# cellX,cellY] = true
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = false
			}
		}
		
		
		
			
}}
}}
else {
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				rainingGrid[# cellX,cellY] = true
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = false
			}
		}
		if cellY = 1 and cellX = 1 {
			show_debug_message(cloudGrid[# 1,1])	
		}
		if cloudGrid[# cellX,cellY] < 0 {
			cloudGrid[# cellX,cellY] = 0
			rainingGrid[# cellX,cellY] = false
		}
			
}}
}

frame +=1
}
}
else{
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if obj_time_controller.day_past >0{
			if not rainingGrid[# cellX, cellY] {
				cloudGrid[# cellX,cellY] += (irandom_range(0,1)/50)
			}
			else {
				cloudGrid[# cellX,cellY] -= (irandom_range(0,1)/10)	
			}
				
			
			
			
			
		}
			
}}

if obj_time_controller.rate <= 100{
if frame mod 100/obj_time_controller.rate = 0 {
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				rainingGrid[# cellX,cellY] = true
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = false
			}
		}
		
		
		
			
}}
}}
else {
for (var cellX = 0; cellX < gridWidth/5; cellX++) {
	for (var cellY = 0; cellY < gridHeight/5; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				rainingGrid[# cellX,cellY] = true
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = false
			}
		}
		if cellY = 1 and cellX = 1 {
			show_debug_message(cloudGrid[# 1,1])	
		}
		if cloudGrid[# cellX,cellY] < 0 {
			cloudGrid[# cellX,cellY] = 0
			rainingGrid[# cellX,cellY] = false
		}
			
}}
}

frame +=1
}