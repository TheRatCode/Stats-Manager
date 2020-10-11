/// @description Create stats
var statsArray = ds_map_find_value(global.entitiesMap, string(entityIndex));

title_text = ds_map_find_value(statsArray, "0");
var spr = ds_map_find_value(statsArray, "1")
if (spr != "") {
	sprite = sprite_add(spr, 1, false, false, 0, 0);
}

//Sprite link
with (instance_create_layer(256, 32, "Instances", obj_stats_label)) {
	if (spr != "") {
		title_text = "Sprite: " + spr;
	} else {
		title_text = "Sprite: N/A";
	}
}

for (var i = 2; i < ds_map_size(statsArray); i++) {
	var inst = instance_create_layer(256, 32*i, "Instances", obj_TI_stats_box);
	var arr = ds_map_find_value(statsArray, string(i));

	with (inst) {
		title_text = string(ds_list_find_value(arr, "0")) + ": ";
		text_input = string(ds_list_find_value(arr, "1"));
	}
}