//Reset list before using

if (room == rm_create_entity) { 
	alarm[3] = 1;
} else if (room == rm_view_entities) {
	alarm[1] = 1;
} else if (room == rm_create_stats) {
	alarm[0] = 1;
} else if (room == rm_create_tags) {
	alarm[2] = 1;	
}

if (room = rm_view_specific_entity) {
	var inst = instance_create_layer(32, 32, "Instances", obj_entity_box);
	
	with (inst) {
		alarm[0] = 1;
		entityIndex = global.selectedIndex;
	}
} else {
	global.selectedIndex = -1;	
}