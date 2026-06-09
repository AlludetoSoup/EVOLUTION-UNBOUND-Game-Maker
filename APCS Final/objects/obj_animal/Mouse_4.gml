if position_meeting(mouse_x,mouse_y,self) and not obj_camera.spect and not obj_camera.placing{
	obj_camera.spect = true
	obj_camera.delayed_spect=true
	obj_camera.spect_inst = self
	obj_camera.size = 2000
	instance_create_layer(10000,0,"Instances_2",obj_sidebar)
	obj_camera.font3 = font_add("Arial",45*(obj_camera.size/2000),false,true,1,1)
	obj_time_controller.font = font_add("Arial",10*(obj_camera.size/1000),false,true,1,1)
}
else if obj_camera.spect= true{
	if obj_camera.spect_inst = self {
		obj_camera.spect = false
		obj_camera.alarm[0]=5
	}
}

