if (room == rm_create_stats) {
	if (statsMapIndex != -1) {
		ds_map_replace(global.statsMap, string(statsMapIndex), text_input);
	}
}