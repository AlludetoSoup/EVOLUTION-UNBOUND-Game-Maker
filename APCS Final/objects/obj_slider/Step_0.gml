x=obj_camera.x-(obj_camera.size/2)+(obj_camera.size/25)
y=obj_camera.y
image_xscale=obj_camera.size/2000
image_yscale=obj_camera.size/2000
bottom=y-image_yscale*500
top=y+image_yscale*500

if down=true{
	yperc=-(clamp(mouse_y,bottom,top)-top)/(0.45*obj_camera.size)*100
}
ymark=infinity
for(i=0;i<6;i++){
	if abs((yperc/100)-(i/5))<ymark{ymark=abs((yperc/100)-(i/5)) yfinal=i}
}
if not obj_camera.spect{
	obj_time_controller.rate_pos=yfinal
}else{
	obj_time_controller.rate_pos=0
}