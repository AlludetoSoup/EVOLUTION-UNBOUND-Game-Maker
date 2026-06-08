for (i=0;i<array_length(traits);i++){
	if (list_traits[i]/global.general_traits[species][i])>(1.25)or(list_traits[i]/global.general_traits[species][i])<(0.75){
		changes++
	}
}
if changes >= array_length(traits)/3 {
	asking=irandom_range(1,99)
	speciation("blob",asking)
	alarm[3]=500
}