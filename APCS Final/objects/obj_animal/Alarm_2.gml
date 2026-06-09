changes = 0
names_list = struct_get_names(obj_camera.default_traits[species])

for (i=0;i<array_length(struct_get_names(traits));i++){
	if (list_traits[i]/struct_get(obj_camera.default_traits[species], struct_get_names(traits)[i]))>(1.15) or(list_traits[i]/struct_get(obj_camera.default_traits[species], struct_get_names(traits)[i]))<(0.85){
		
		changes++
	}
}
//show_debug_message(string_concat("changes: ",string(changes)))
if changes >= array_length(struct_get_names(traits))/3 {
	asking=irandom_range(1,99)
	species = (obj_camera.bar_tools[array_length(obj_camera.bar_tools)-1][1])+1
	show_debug_message(species)
	speciation("blob",asking,self)
	alarm[3]=500
}