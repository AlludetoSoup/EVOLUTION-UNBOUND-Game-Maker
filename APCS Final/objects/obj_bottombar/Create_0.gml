/// @description Insert description here
// You can write your code in this editor
selecting = false
start_pos = 0
current_set = []
changed = false
array_copy(current_set,0,obj_camera.bar_tools,start_pos,6)
instance_create_layer(x-375-62.5,y-50,"Instances_4",obj_arrow)
inst_ = instance_create_layer(x+375+62.5,y-50,"Instances_4",obj_arrow)
inst_.dir = 1
i= 0
x__ = -250-62.5
while i < 6 {
if current_set[i][0] = obj_place_land { 
inst_ =instance_create_layer(x+x__,y-50,"Instances_4",obj_place_land)
}
else if current_set[i][0] = obj_place_animal {
inst_ =instance_create_layer(x+x__,y-50,"Instances_4",obj_place_animal)
}
inst_.action = current_set[i][1]
inst_._x = x__
x__ += 125

i+=1
}
