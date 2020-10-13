//Reset list before using
//Destroy all items in array
for (var i = 0; i < array_length_1d(items); i++) {
	if (items[i] != "") {
		instance_destroy(items[i]);
	}
}

if (room == rm_create_entity) { 
	//Spawn all stat boxes
	for (var i = 0; i < ds_map_size(global.statsMap); i++) {
		var titleText = ds_map_find_value(global.statsMap, string(i));
		
		if (titleText == "" || titleText == undefined) {
			continue;	
		}
		
		//Loop values for proper instance position creation
		var y_off = 160;
		var x_off;
		var real_I;
	
		if (i < 8) {
			real_I = i
			x_off = 32;
		} else {
			real_I = i-8;
			x_off = 320;
		}
		
		items[i] = instance_create_layer(x_off, (real_I*64)+y_off, "Instances", obj_TI_entity_stats_box)
			
		with (items[i]) {
			title_text = titleText;
		}
	}
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