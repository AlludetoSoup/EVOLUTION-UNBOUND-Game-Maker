if position_meeting(mouse_x,mouse_y,self) and not obj_camera.spect{
	obj_camera.spect = true
	obj_camera.delayed_spect=true
	obj_camera.spect_inst = self
	obj_camera.size = 2000
	instance_create_layer(10000,0,"Instances_2",obj_sidebar)
}
else if obj_camera.spect= true{
	if obj_camera.spect_inst = self {
		obj_camera.spect = false
		obj_camera.alarm[0]=5
		
	}
}

