if sex = 1{draw_set_colour(c_blue)}
else{draw_set_color(c_red)
	draw_text_transformed(obj_camera.x+900,obj_camera.y+name*30+obj_camera.scroll,"mat:"+string(bred),3,3,0)
	draw_text_transformed(obj_camera.x+1100,obj_camera.y+name*30+obj_camera.scroll,"cld:"+string(breed_mate),3,3,0)}
draw_path(path, pathx, pathy, true)
draw_circle(x, y, sight*100,true)
draw_circle_colour(x, y, smell*100, c_red, c_orange, true)
draw_circle_colour(x, y, intuition*100, c_red, c_yellow, true)
draw_self()
