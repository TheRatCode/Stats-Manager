/// @description Create stats objects in stats room
for (var i = 0; i < array_length_1d(items); i++) {
	if (items[i] != "") {
		instance_destroy(items[i]);
	}
}

var statsCount = 0;
for (var i = 0; i < ds_map_size(global.statsMap); i++) {
	var tmpVal = ds_map_find_value(global.statsMap, string(i));
	if (tmpVal != "" && tmpVal != undefined) {
		statsCount++;	
	}
}

for (var i = 0; i < ds_map_size(global.statsMap); i++) {
	var textInput = ds_map_find_value(global.statsMap, string(i));
	
	if (textInput == "" || textInput = undefined) {
		continue;
	}
	
	var y_off = 128;
	var x_off;
	var real_I;
	
	if (i < 8) {
		real_I = i
		x_off = 32;
	} else {
		real_I = i-8;
		x_off = 320;
	}
	
	items[i] = instance_create_layer(x_off, (real_I*64)+y_off, "Instances", obj_TI_stats_name)
	
	with (items[i]) {
		text_input = textInput;
		statsMapIndex = i;
		
		if (i == statsCount-1) { //If this is the last entry
			canDelete = true;
		}
	}
}