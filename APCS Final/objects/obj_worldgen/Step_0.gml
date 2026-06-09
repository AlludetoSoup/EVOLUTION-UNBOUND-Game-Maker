////show_debug_message(mouse_x)
////show_debug_message(mouse_y)
/// @description Insert description here
// You can write your code in this editor
x_ = obj_camera.x
y_ = obj_camera.y
size_ = obj_camera.size

cellX_min = floor((x_-(size_/2))/500)
cellY_min = floor((y_-(size_/2))/500)
cellX_max = ceil((x_+(size_/2))/500)
cellY_max = ceil((y_+(size_/2))/500)


if obj_time_controller.day_past > 1 {
for (var days = 0; days < obj_time_controller.day_past; days+=1){
for (var cellX = cellX_min; cellX < cellX_max; cellX++) {
	for (var cellY = cellY_min; cellY < cellY_max; cellY++) {
		if obj_time_controller.day_past >0{
			if not rainingGrid[# cellX, cellY] {
				cloudGrid[# cellX,cellY] += (irandom_range(0,1)/50)
			}
			else {
				cloudGrid[# cellX,cellY] -= (irandom_range(0,1)/10)	
			}
				
			
			
			
			  
		}
			
}}

if obj_time_controller.rate <= 0{
if frame mod 100/obj_time_controller.rate = 0 {
for (var cellX = cellX_min; cellX < cellX_max; cellX++) {
	for (var cellY = cellY_min; cellY < cellY_max; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				if avg_temp(cellX,cellY)+obj_time_controller.temp_increase > 0.25{
					rainingGrid[# cellX,cellY] = 1
				}
				else{
					rainingGrid[# cellX,cellY] = 2
				}
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = 0
			}
		}
		
		
		
			
}}
}}
else {
for (var cellX = cellX_min; cellX < cellX_max; cellX++) {
	for (var cellY = cellY_min; cellY < cellY_max; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				if avg_temp(cellX,cellY)+obj_time_controller.temp_increase > 0.25{
					rainingGrid[# cellX,cellY] = 1
				}
				else{
					rainingGrid[# cellX,cellY] = 2
				}
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = 0
			}
		}
		
		if cloudGrid[# cellX,cellY] < 0 {
			cloudGrid[# cellX,cellY] = 0
			rainingGrid[# cellX,cellY] = 0
		}
		if cloudGrid[# cellX,cellY] > 1 {
			cloudGrid[# cellX,cellY] = 0.95
			if avg_temp(cellX,cellY)+obj_time_controller.temp_increase > 0.25{
					rainingGrid[# cellX,cellY] = 1
				}
				else{
					rainingGrid[# cellX,cellY] = 2
				}
		}
		
			
		
}}
}

frame +=1
}
}
else{
for (var cellX = cellX_min; cellX < cellX_max; cellX++) {
	for (var cellY = cellY_min; cellY < cellY_max; cellY++) {
		if obj_time_controller.day_past >0{
			if not rainingGrid[# cellX, cellY] {
				cloudGrid[# cellX,cellY] += (irandom_range(0,1)/50)
			}
			else {
				cloudGrid[# cellX,cellY] -= (irandom_range(0,1)/10)	
			}
				
			
			
			
			
		}
			
}}

if obj_time_controller.rate <= 0{
if frame mod 100/obj_time_controller.rate = 0 {
for (var cellX = cellX_min; cellX < cellX_max; cellX++) {
	for (var cellY = cellY_min; cellY < cellY_max; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				if avg_temp(cellX,cellY)+obj_time_controller.temp_increase > 0.25{
					rainingGrid[# cellX,cellY] = 1
				}
				else{
					rainingGrid[# cellX,cellY] = 2
				}
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = 0
			}
		}
		
		
		
			
}}
}}
else {
for (var cellX = cellX_min; cellX < cellX_max; cellX++) {
	for (var cellY = cellY_min; cellY < cellY_max; cellY++) {
		if cloudGrid[# cellX,cellY] > 0.7 and not rainingGrid[# cellX,cellY] {
			if irandom_range((cloudGrid[# cellX,cellY]*100)-70,20) = 20{
				if avg_temp(cellX,cellY)+obj_time_controller.temp_increase > 0.25{
					rainingGrid[# cellX,cellY] = 1
				}
				else{
					rainingGrid[# cellX,cellY] = 2
				}
			}
		}
		if cloudGrid[# cellX,cellY] < 0.3 and rainingGrid[# cellX,cellY]{
			if irandom_range(0,(cloudGrid[# cellX,cellY]*100)-10) = 1{
				rainingGrid[# cellX,cellY] = 0
			}
		}
		
		if cloudGrid[# cellX,cellY] < 0 {
			cloudGrid[# cellX,cellY] = 0
			rainingGrid[# cellX,cellY] = 0
		}
		if cloudGrid[# cellX,cellY] > 1 {
			cloudGrid[# cellX,cellY] = 0.95
			if avg_temp(cellX,cellY)+obj_time_controller.temp_increase > 0.25{
					rainingGrid[# cellX,cellY] = 1
				}
				else{
					rainingGrid[# cellX,cellY] = 2
				}
		}
		
		
		
		
		
			
}}
}

frame +=1
}



