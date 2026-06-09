/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black)
draw_set_font(font)
draw_text_transformed(obj_camera.x-(obj_camera.size/2),obj_camera.y-(obj_camera.size/2), string_concat("Year: ",year,", Day: ", string(day),": ", string(hour),":",string(minute)),2,2,0)