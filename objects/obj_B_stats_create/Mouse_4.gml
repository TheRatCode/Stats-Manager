var slot_idx = ds_map_size(global.statsMap);

if (slot_idx < 16) {
	for (var i = 0; i < ds_map_size(global.statsMap); i++) { //Find empty slot, else map size
		if (ds_map_find_value(global.statsMap, i) == "") {
			slot_idx = i;
			break;
		}
	}

	if (slot_idx == ds_map_size) {
		ds_map_add(global.statsMap, string(slot_idx), obj_TI_stats_name.text_input);
	} else {
		ds_map_replace(global.statsMap, string(slot_idx), obj_TI_stats_name.text_input);	
	}

	//Reset stats in rm_create_stats
	obj_stats_controller.alarm[0] = 1;
}