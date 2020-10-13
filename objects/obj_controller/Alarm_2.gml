/// @description Create tags objects in tags room
for (var i = 0; i < array_length_1d(items); i++) {
	if (items[i] != "") {
		instance_destroy(items[i]);
	}
}

var tagsCount = 0;
for (var i = 0; i < ds_map_size(global.entityTags); i++) {
	var tmpVal = ds_map_find_value(global.entityTags, string(i));
	if (tmpVal != "" && tmpVal != undefined) {
		tagsCount++;	
	}
}

var real_I = 0;

for (var i = 0; i < ds_map_size(global.entityTags); i++) {
	var textInput = ds_map_find_value(global.entityTags, string(i));
	
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
	
	items[real_I] = instance_create_layer(x_off, (offset_I*64)+y_off, "Instances", obj_TI_tags_name)
	
	with (items[real_I]) {
		text_input = textInput;
		tagsMapIndex = i;
		
		if (real_I == tagsCount-1) { //If this is the last entry
			canDelete = true;
		}
	}
	
	real_I++;
}