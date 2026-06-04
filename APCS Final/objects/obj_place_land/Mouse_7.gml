/// @description Insert description here
// You can write your code in this editor
if not obj_camera.placing {
obj_camera.placing = true
a = instance_create_layer(mouse_x,mouse_y,"Instances_4",obj_land_placing)
a.action = action
}
