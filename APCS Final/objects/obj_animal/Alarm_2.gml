changes = 0
names_list = struct_get_names(obj_camera.default_traits[species])

for (i=0;i<array_length(struct_get_names(traits));i++){
	if (list_traits[i]/struct_get(obj_camera.default_traits[species], struct_get_names(traits)[i]))>(1.25) or(list_traits[i]/struct_get(obj_camera.default_traits[species], struct_get_names(traits)[i]))<(0.75){
		
		changes++
	}
}

if changes >= array_length(struct_get_names(traits))/3 {
	asking=irandom_range(1,99)
	speciation("blob",asking,self)
	alarm[3]=500
}