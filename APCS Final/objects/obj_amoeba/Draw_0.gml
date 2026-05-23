if sex = 1{draw_set_colour(c_blue)}
else{draw_set_color(c_red)
	draw_text_transformed(obj_camera.x+400,obj_camera.y+int64(string_delete(id,1,18))*30,string(bred),3,3,0)}
draw_path(path, pathx, pathy, true)
draw_text_transformed(obj_camera.x,obj_camera.y+int64(string_delete(id,1,18))*30,string(hungry),3,3,0)
draw_text_transformed(obj_camera.x+200,obj_camera.y+int64(string_delete(id,1,18))*30,string(Health),3,3,0)
draw_circle_colour(x, y, sight*100, c_red, c_red, true)
draw_circle_colour(x, y, smell*100, c_red, c_orange, true)
draw_circle_colour(x, y, intuition*100, c_red, c_yellow, true)
draw_self()
