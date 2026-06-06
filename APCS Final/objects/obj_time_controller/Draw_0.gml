/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black)
draw_text_transformed(obj_camera.x-1000,obj_camera.y-1000, string_concat("Year: ",year,", Day: ", string(day),": ", string(hour),":",string(minute)),2,2,0)