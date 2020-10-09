if (room = rm_view_specific_entity) {
	var inst = instance_create_layer(32, 32, "Instances", obj_entity_box);
	
	with (inst) {
		alarm[0] = 1;
		entityIndex = global.selectedIndex;
	}
} else {
	global.selectedIndex = -1;	
}