/// @description Destroyed on room end
if (statIndex != -1) {
	var entityArray = ds_map_find_value(global.entitiesMap, string(entityIndex));
	var statsArray = ds_map_find_value(entityArray, string(statIndex));
	ds_list_replace(statsArray, "1", text_input);
}