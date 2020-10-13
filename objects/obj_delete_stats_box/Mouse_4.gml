/// @description Remove stats from ds map
if (statsMapIndex != -1) {
	ds_map_replace(global.statsMap, string(statsMapIndex), "");
	obj_controller.alarm[0] = 1;
}