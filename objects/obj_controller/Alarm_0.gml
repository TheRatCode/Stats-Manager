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

var real_I = 0;

for (var i = 0; i < ds_map_size(global.statsMap); i++) {
	var textInput = ds_map_find_value(global.statsMap, string(i));
	
	if (textInput == "" || textInput = undefined) {
		continue;
	}
	
	var y_off = 128;
	var x_off;
	var offset_I;
	
	if (real_I < 8) {
		offset_I = real_I
		x_off = 32;
	} else {
		offset_I = real_I-8;
		x_off = 320;
	}
	
	items[real_I] = instance_create_layer(x_off, (offset_I*64)+y_off, "Instances", obj_TI_stats_name)
	
	with (items[real_I]) {
		text_input = textInput;
		statsMapIndex = i;
		
		if (real_I == statsCount-1) { //If this is the last entry
			canDelete = true;
		}
	}
	
	real_I++;
}