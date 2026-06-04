/// @description Insert description here
// You can write your code in this editor
obj_camera.placing = false
instance_destroy(obj_land_placing)
instance_destroy(obj_place_animal)
obj_camera.placing = true
a = instance_create_layer(mouse_x,mouse_y,"Instances_4",obj_land_placing)
a.action = action
