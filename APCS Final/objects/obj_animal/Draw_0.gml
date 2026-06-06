if sex = 1{draw_set_colour(c_blue)}
else{draw_set_color(c_red)}
draw_path(path, pathx, pathy, true)
draw_circle_colour(homex,homey,50,c_dkgray,c_dkgray,false) 
draw_text_colour(homex-20,homey-10,string(name),c_white,c_white,c_white,c_white,1)
draw_text_transformed(obj_camera.x,obj_camera.y+name*90+obj_camera.scroll,string(hungry),2,2,0)
draw_text_transformed(obj_camera.x+500,obj_camera.y+name*90+obj_camera.scroll,"hel:"+string(Health),2,2,0)
draw_text_transformed(obj_camera.x+1000,obj_camera.y+name*90+obj_camera.scroll,"nam:"+string(name),2,2,0)
draw_text_transformed(obj_camera.x+1500,obj_camera.y+name*90+obj_camera.scroll,"age:"+string(age),2,2,0)
draw_circle(x, y, sight*10,true)
draw_circle_colour(x, y, smell*10, c_red, c_orange, true)
draw_circle_colour(x, y, intuition*10, c_red, c_yellow, true)
if pot_target != ""{
	if instance_exists(pot_target) {
		draw_rectangle(pot_target.x-50, pot_target.y-50, pot_target.x+50, pot_target.y+50, true)}
}
draw_self()
