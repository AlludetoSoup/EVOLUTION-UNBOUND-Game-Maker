if sex = 1{draw_set_colour(c_blue)}
else{draw_set_color(c_red)}
draw_path(path, pathx, pathy, true)
draw_text_transformed(obj_camera.x,obj_camera.y+name*40+obj_camera.scroll,string(hungry),3,3,0)
draw_text_transformed(obj_camera.x+200,obj_camera.y+name*40+obj_camera.scroll,"hel:"+string(Health),3,3,0)
draw_text_transformed(obj_camera.x+400,obj_camera.y+name*40+obj_camera.scroll,"nam:"+string(name),3,3,0)
draw_text_transformed(obj_camera.x+700,obj_camera.y+name*40+obj_camera.scroll,"age:"+string(age),3,3,0)
draw_circle(x, y, sight*100,true)
draw_circle_colour(x, y, smell*100, c_red, c_orange, true)
draw_circle_colour(x, y, intuition*100, c_red, c_yellow, true)
if pot_target != ""{
draw_rectangle(pot_target.x-50, pot_target.y-50, pot_target.x+50, pot_target.y+50, true)}
draw_self()
 