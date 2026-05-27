if position_meeting(mouse_x,mouse_y,self) {
	obj_camera.spect = true
	obj_camera.spect_inst = self
	obj_camera.size = 2000
	instance_create_layer(10000,0,"Instances_2",obj_sidebar)
}
else if obj_camera.spect= true{
	if obj_camera.spect_inst = self {
		spect = false
	}
}
