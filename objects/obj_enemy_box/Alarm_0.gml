/// @description Create stats
var statsArray = ds_map_find_value(global.enemiesMap, string(enemyIndex));

title_text = ds_map_find_value(statsArray, "0");
sprite = ds_map_find_value(statsArray, "1");

for (var i = 2; i < ds_map_size(statsArray); i++) {
	var inst = instance_create_layer(256, 32*i, "Instances", obj_stats_box);
	var arr = ds_map_find_value(statsArray, string(i));

	with (inst) {
		title_text = string(ds_list_find_value(arr, "0")) + ": " + string(ds_list_find_value(arr, "1"));
	}
}