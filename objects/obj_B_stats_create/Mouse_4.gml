var slot_idx = ds_map_size(global.statsMap);

for (var i = 0; i < ds_map_size(global.statsMap); i++) { //Find empty slot, else map size
	var stat = ds_map_find_value(global.statsMap, string(i))
	if (stat == "") {
		slot_idx = i;
		break;
	}
}

if (slot_idx < 16) {
	if (slot_idx == ds_map_size(global.statsMap)) {
		ds_map_add(global.statsMap, string(slot_idx), obj_TI_stats_name.text_input);
	} else {
		ds_map_replace(global.statsMap, string(slot_idx), obj_TI_stats_name.text_input);	
	}
}

//Reset stats in rm_create_stats
obj_controller.alarm[0] = 1;