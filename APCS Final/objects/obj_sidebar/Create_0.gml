/// @description Insert description here
// You can write your code in this editor
stats = ["Health","age","hungry","intelligence","sex","none","none","curiosity","children_num","accuracy","agility","breath","fertile_age","hungerspeed","intuition","lifespan","muscle_mass_limb","pathspeed","sight","skin","skin_extrusion","smell","strength"]
center_ = x-350
y_ = y+200
for (var i =0; i < 22; i+=1) {
	inst = instance_create_layer(center_,y,"Instances_3",obj_change_val)
	inst.changex = -300
	inst.val = -1
	inst.changey = y_
	inst.stat = stats[i]
	inst = instance_create_layer(center_,y,"Instances_3",obj_change_val)
	inst.changex = 300
	inst.val = 1
	inst.changey = y_
	inst.stat = stats[i]
	y_+=75
	
}