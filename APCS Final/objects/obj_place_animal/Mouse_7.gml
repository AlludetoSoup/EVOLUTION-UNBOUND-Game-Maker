/// @description Insert description here
// You can write your code in this editor
obj_camera.placing = false
instance_destroy(obj_land_placing)
instance_destroy(obj_animal_placing)
instance_destroy(obj_bush_placing)
obj_camera.placing = true
inst = instance_create_layer(mouse_x,mouse_y,"Instances_4",obj_animal_placing)
inst.action = action
